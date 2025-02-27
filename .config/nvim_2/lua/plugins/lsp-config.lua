return {
	{
    	"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
    	"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {"lua_ls", "clangd", "tsserver", "vuels", "volar", "html", "bashls",}
			})
		end,
	},
	{
    	"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require('lspconfig')
			lspconfig.lua_ls.setup({})
			lspconfig.pyright.setup({})
			lspconfig.vuels.setup({})
			lspconfig.tsserver.setup({})
			lspconfig.biome.setup({})
			lspconfig.html.setup({})
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
		end,
	},
}
