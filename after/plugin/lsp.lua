local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})

  vim.keymap.set('n', '<leader>i', function ()
      vim.lsp.buf.format({async = false, timeout_ms = 5000})
  end, ops)

end)

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here 
  -- with the ones you want to install
  ensure_installed = {'tsserver', 'rust_analyzer'},
  automatic_installation = true,
  handlers = {
    lsp_zero.default_setup,
  },
})

