from pathlib import Path
from mcp.server.fastmcp import FastMCP

mcp = FastMCP("file-analyzer")


@mcp.tool()
async def analyze_file(file_path: str) -> str:
    """Return statistics for a file.

    Args:
        file_path: Absolute path to the file
            (e.g., /Users/you/project/src/main.py)
    """
    path = Path(file_path)

    if not path.is_absolute():
        return (
            f"Error: Use an absolute path. "
            f"Received: {file_path}"
        )
    if not path.exists():
        return f"Error: File not found: {file_path}"
    if not path.is_file():
        return f"Error: Not a file: {file_path}"

    try:
        content = path.read_text(encoding="utf-8")
    except UnicodeDecodeError:
        return f"Error: Binary file: {file_path}"

    lines = content.splitlines()
    non_empty = [l for l in lines if l.strip()]

    return (
        f"File: {path.name}\n"
        f"Path: {file_path}\n"
        f"Size: {path.stat().st_size:,} bytes\n"
        f"Lines: {len(lines)}\n"
        f"Non-empty lines: {len(non_empty)}\n"
        f"Characters: {len(content):,}\n"
        f"Extension: {path.suffix or 'none'}"
    )


@mcp.tool()
async def analyze_directory(
    directory_path: str,
    extension: str = "",
) -> str:
    """Aggregate file statistics for a directory.

    Args:
        directory_path: Absolute path to the
            directory to analyze
        extension: Filter by extension
            (e.g., .py, .ts). Empty = all files
    """
    path = Path(directory_path)

    if not path.is_absolute():
        return (
            f"Error: Use an absolute path. "
            f"Received: {directory_path}"
        )
    if not path.exists() or not path.is_dir():
        return (
            f"Error: Directory not found: "
            f"{directory_path}"
        )

    pattern = f"*{extension}" if extension else "*"
    files = [f for f in path.rglob(pattern)
             if f.is_file()]

    if not files:
        return f"No matching files (pattern: {pattern})"

    total_size = sum(f.stat().st_size for f in files)
    total_lines = 0
    for f in files:
        try:
            text = f.read_text(encoding="utf-8")
            total_lines += len(text.splitlines())
        except (UnicodeDecodeError, PermissionError):
            pass

    return (
        f"Directory: {directory_path}\n"
        f"Filter: {extension or 'all files'}\n"
        f"Files: {len(files)}\n"
        f"Total size: {total_size:,} bytes\n"
        f"Total lines: {total_lines:,}"
    )


def main():
    mcp.run(transport="stdio")

if __name__ == "__main__":
    main()
