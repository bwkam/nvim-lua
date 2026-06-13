return {
	"amedoeyes/eyes.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd([[
                colorscheme eyes
                highlight Normal guibg=none
                highlight NonText guibg=none
                highlight Normal ctermbg=none
                highlight NonText ctermbg=none
    ]])
	end,
}
