local options = {
	backup = false,
	clipboard = "unnamedplus",
	hlsearch = true,
	ignorecase = true,
	mouse = "a",
	smartcase = true,
	smartindent = true,
	undofile = true,
	expandtab = true,
	cursorline = true,
	wrap = true,
	linebreak = true,
	tabstop = 2,
	shiftwidth = 2,
	softtabstop = 2,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
