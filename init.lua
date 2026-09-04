require("config.lazy")

vim.diagnostic.config({
	virtual_text = true,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = " ", -- Replaces 'E'
			[vim.diagnostic.severity.WARN] = " ", -- Replaces 'W'
			[vim.diagnostic.severity.INFO] = " ", -- Replaces 'I'
			[vim.diagnostic.severity.HINT] = "󰠠 ", -- Replaces 'H'
		},
		-- Optional: You can also choose to highlight the line number itself
		-- instead of showing an icon by setting numhl = true
		numhl = {
			[vim.diagnostic.severity.ERROR] = "DiagnosticSignError",
			[vim.diagnostic.severity.WARN] = "DiagnosticSignWarn",
			[vim.diagnostic.severity.INFO] = "DiagnosticSignInfo",
			[vim.diagnostic.severity.HINT] = "DiagnosticSignHint",
		},
	},
})

vim.lsp.config("*", {
	capabailities = require("blink.cmp").get_lsp_capabilities(),
})

vim.lsp.enable({
	"emmylua_ls",
	"tinymist",
	-- "rust_analyzer",
	"svelte",
	"ts_ls",
	"elp",
	"html",
	"cssls",
	--	"hls",
	"elmls",
})
