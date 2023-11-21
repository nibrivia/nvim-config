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

lsp_zero.on_attach(function(client, bufnr)
    if client.server_capabilities.documentHighlightProvider then
        vim.api.nvim_create_autocmd({"CursorHold", "CursorHoldI"}, {
            callback = vim.lsp.buf.document_highlight
        })
        vim.api.nvim_create_autocmd({"CursorMoved"}, {
            callback = vim.lsp.buf.clear_references
        })
    end
end)
