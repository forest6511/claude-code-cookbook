import { McpServer } from
  "@modelcontextprotocol/sdk/server/mcp.js";
import { StdioServerTransport } from
  "@modelcontextprotocol/sdk/server/stdio.js";
import { z } from "zod";

const server = new McpServer({
  name: "todo",
  version: "1.0.0",
});

interface Todo {
  id: string;
  title: string;
  completed: boolean;
  createdAt: string;
}

const todos: Map<string, Todo> = new Map();
let nextId = 1;

// Tool: add_todo
server.registerTool(
  "add_todo",
  {
    description: "Add a new task. Returns the " +
      "created task with its assigned ID.",
    inputSchema: {
      title: z.string().min(1).max(200)
        .describe("Task title (1-200 characters)"),
    },
  },
  async ({ title }) => {
    const id = `todo_${nextId++}`;
    const todo: Todo = {
      id, title,
      completed: false,
      createdAt: new Date().toISOString(),
    };
    todos.set(id, todo);
    return {
      content: [
        { type: "text",
          text: JSON.stringify(todo, null, 2) },
      ],
    };
  }
);

// Tool: list_todos
server.registerTool(
  "list_todos",
  {
    description: "List tasks. Filter by status.",
    inputSchema: {
      status: z
        .enum(["all", "completed", "pending"])
        .default("all")
        .describe("all | completed | pending"),
    },
  },
  async ({ status }) => {
    let result = Array.from(todos.values());
    if (status === "completed")
      result = result.filter((t) => t.completed);
    else if (status === "pending")
      result = result.filter((t) => !t.completed);
    return {
      content: [
        { type: "text",
          text: result.length === 0
            ? "No tasks found."
            : JSON.stringify(result, null, 2) },
      ],
    };
  }
);

// Tool: complete_todo
server.registerTool(
  "complete_todo",
  {
    description: "Mark a task as completed. " +
      "ID starts with todo_ (e.g., todo_1).",
    inputSchema: {
      id: z.string()
        .describe("Task ID (e.g., todo_1)"),
    },
  },
  async ({ id }) => {
    const todo = todos.get(id);
    if (!todo) {
      return {
        content: [{ type: "text",
          text: `Error: Task '${id}' not found. ` +
            `Use list_todos for valid IDs.` }],
        isError: true,
      };
    }
    todo.completed = true;
    return {
      content: [
        { type: "text",
          text: JSON.stringify(todo, null, 2) },
      ],
    };
  }
);

// Start the server
async function main() {
  const transport = new StdioServerTransport();
  await server.connect(transport);
  // Use stderr -- stdout is the JSON-RPC channel
  console.error("Todo MCP Server running on stdio");
}

main().catch((error) => {
  console.error("Fatal error:", error);
  process.exit(1);
});
