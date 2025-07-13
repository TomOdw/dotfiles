return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({})
	end,
	vim.keymap.set("n", "<leader>tt", "<CMD>ToggleTerm<CR>", { desc = "[T]oggle the [T]erminal" }),
}
