return {
  -- lang server installations
  {
    'williamboman/mason.nvim',
    dependencies = {
      {
        'nvimtools/none-ls.nvim',
        config = function()
          require("null-ls").setup({
            sources = {
              -- latex
              -- require("null-ls").builtins.formatting.latexindent,
              -- lua
              require("null-ls").builtins.formatting.stylua,
              -- markdown
              require("null-ls").builtins.formatting.mdformat,
              -- python
              require("null-ls").builtins.formatting.isort,
              require("null-ls").builtins.formatting.yapf,
              -- shell
              -- require("null-ls").builtins.formatting.beautysh,
              -- yaml
              require("null-ls").builtins.formatting.yamlfmt,
            }
          })
        end
      },
      {
        'jay-babu/mason-null-ls.nvim',
        opts = {
          automatic_installation = true,
          ensure_installed = {
            -- latex
            "latexindent",
            -- lua
            "stylua",
            -- markdown
            "mdformat",
            -- python
            "isort",
            "yapf",
            -- shell
            "beautysh",
            -- yaml
            "yamlfmt",
          }
        }
      }
    },
    opts = { ui = { icons = Install_signs } }
  }
}
