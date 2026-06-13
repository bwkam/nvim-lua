return {
	"nvim-telescope/telescope.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	keys = {
		{
			"<leader>,",
			"<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",
			desc = "Switch Buffer",
		},
		{ "<leader>/", "<cmd>Telescope live_grep<cr>", desc = "Grep (Root Dir)" },
		{
			"<leader>fF",
			function()
				-- 1. Neovim natively searches upward for these specific project markers
				local root = vim.fs.root(0, { ".git", ".luarc.json", "pyproject.toml", "Makefile" })

				-- 2. If it finds a root, search it. If not, fallback to your terminal's cwd.
				require("telescope.builtin").find_files({ cwd = root or vim.uv.cwd() })
			end,
			desc = "Find Files (Root Dir)",
		},
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files (cwd)" },
		{ "<leader>fp", "<cmd>Telescope find_files cwd=~/.config/nvim<cr>", desc = "Find Config Files" },
		{
			"<leader>fb",
			"<cmd>Telescope buffers sort_mru=true sort_lastused=true ignore_current_buffer=true<cr>",
			desc = "Buffers",
		},

		{ "<leader>fB", "<cmd>Telescope buffers<cr>", desc = "Buffers (all)" },
		{ "<leader>ft", "<cmd>Telescope builtin<cr>", desc = "Telescope builtins" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find Help" },
		{ "<leader>fM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
		{ "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent Files" },
		{ "<leader>fk", "<cmd>Telescope keymaps<cr>", desc = "Keymaps" },
		{ "<leader>fc", "<cmd>Telescope commands<cr>", desc = "Commands" },
	},
}
