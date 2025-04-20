-- Install
-- npm install -g @biomejs/biome

--- @type vim.lsp.Config
return {
  cmd = { "biome", "lsp-proxy" },
  filetypes = { "astro", "css", "graphql", "javascript", "javascriptreact", "json", "jsonc", "svelte", "typescript", "typescript.tsx", "typescriptreact", "vue" },
  workspace_required = true,
}
