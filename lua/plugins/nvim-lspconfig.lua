return {
	"neovim/nvim-lspconfig",
	opts = {
		inlay_hints = { enable = true },
		servers = {
			jdtls = {
				-- Configurações adicionais (se necessário)
				cmd = { "jdtls" }, -- o comando já estará registrado pelo Mason
				filetypes = { "java" },
				root_dir = function(fname)
					return require("lspconfig.util").root_pattern("pom.xml", "gradle.build", ".git")(fname)
						or vim.fn.getcwd()
				end,
			},
		},
	},
}
