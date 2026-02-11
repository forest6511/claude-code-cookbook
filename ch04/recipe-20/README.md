# Recipe 20: Web Scraping and Data Extraction

You need structured data from a website, but writing scraping code with HTTP libraries and HTML parsers is tedious -- especially for JavaScript-rendered content.

## Quick Reference

### Basic data extraction

```text
> Open https://news.ycombinator.com and
  extract the top 10 stories with title,
  URL, points, and comment count. Return
  the result as JSON.
```

### Paginated content

```text
> Extract the next page too, for a total
  of 30 stories
```

### JavaScript-rendered content

```text
> Extract the table data from this page
  as CSV, including dynamically rendered
  content
```

### Discovering API endpoints

```text
> Check the network requests on this page
  and identify the API endpoints used for
  data loading
```

Use `browser_network_requests` to find backend APIs. Calling the API directly is more stable than scraping the DOM.

## Book Reference

See Chapter 4 of *Claude Code Cookbook* for the full recipe.
