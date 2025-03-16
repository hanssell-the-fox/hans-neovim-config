
local lspconfig = require("lspconfig")

-- lua
lspconfig.lua_ls.setup({
	settings = { -- custom settings for lua
		Lua = {
			hint = { enable = true },
			-- make the language server recognize "vim" global
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				-- make language server aware of runtime files
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
})

