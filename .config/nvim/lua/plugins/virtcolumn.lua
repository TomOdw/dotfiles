return {
	"lukas-reineke/virt-column.nvim",
	config = function()
		require("virt-column").setup({
			enabled = true,
			char = "│",
			virtcolumn = "81",
			exclude = {
				-- buftype = { "" },
				-- filetypes = { "rust" },
			},
		})
	end,
}
