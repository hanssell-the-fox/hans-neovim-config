require("notify").setup({
	background_colour = "#000000",
})

local lspconfig = require("lspconfig")
local lsp_lua = lspconfig.lua_ls
local lsp_deno = lspconfig.denols
local lsp_ts = lspconfig.ts_ls

local on_attach = function(client, bufnr)
	vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
	if client.server_capabilities.cocumentFormatingProvider then
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = bufnr,
			callback = function()
				vim.lsp.buf.format({ async = false })
			end,
		})
	end
end

-- lua
if lsp_lua and lsp_lua.setup then
	lsp_lua.setup({
		on_attach = on_attach,
		settings = { -- custom settings for lua
			Lua = {
				hint = { enable = true },
				diagnostics = { globals = { "vim" } },
				workspace = {
					library = {
						[vim.fn.expand("$VIMRUNTIME/lua")] = true,
						[vim.fn.stdpath("config") .. "/lua"] = true,
					},
				},
			},
		},
	})
end

-- denols
if lsp_deno and lsp_deno.setup then
	lsp_deno.setup({
		filetypes = { "typescript" },
		root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
		single_file_support = false,
		settings = {
			deno = {
				inlayHints = {
					parameterNames = { enabled = "all" },
					parameterTypes = { enabled = true },
					variableTypes = { enabled = true },
					propertyDeclarationTypes = { enabled = true },
					functionLikeReturnTypes = { enable = true },
					enumMemberValues = { enabled = true },
				},
			},
		},
	})
end

-- typescript
if lsp_ts and lsp_ts.setup then
	lsp_ts.setup({
		on_attach = on_attach,
		root_dir = lspconfig.util.root_pattern("package.json"),
		single_file_support = false,
		settings = {
			typescript = {
				inlayHints = {
					includeInlayParameterNameHints = "all",
					includeInlayParameterNameHintsWhenArgumentMatchesName = false,
					includeInlayFunctionParameterTypeHints = true,
					includeInlayVariableTypeHints = true,
					includeInlayVariableTypeHintsWhenTypeMatchesName = false,
					includeInlayPropertyDeclarationTypeHints = true,
					includeInlayFunctionLikeReturnTypeHints = true,
					includeInlayEnumMemberValueHints = true,
				},
			},
			javascript = {
				inlayHints = {
					includeInlayParameterNameHints = "all",
					includeInlayParameterNameHintsWhenArgumentMatchesName = false,
					includeInlayFunctionParameterTypeHints = true,
					includeInlayVariableTypeHints = true,
					includeInlayVariableTypeHintsWhenTypeMatchesName = false,
					includeInlayPropertyDeclarationTypeHints = true,
					includeInlayFunctionLikeReturnTypeHints = true,
					includeInlayEnumMemberValueHints = true,
				},
			},
		},
	})
end
