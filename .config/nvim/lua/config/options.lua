-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = "a"

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

-- convert tabs to spaces
vim.opt.expandtab = true
-- the number of spaces inserted for each indentation
vim.opt.shiftwidth = 2
-- insert n spaces for a tab
vim.opt.tabstop = 2
-- Number of spaces that a tab counts for while performing editing operations
vim.opt.softtabstop = 2

-- Enable break indent
vim.opt.breakindent = true
-- make indenting smarter again
vim.opt.smartindent = true
-- copy indent from current line when starting new one
vim.opt.autoindent = true
-- When deleting tabs, automatically detect that ... (expandtab)
vim.opt.smarttab = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- more space in the neovim command line for displaying messages
vim.o.cmdheight = 1
-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 15
-- Show which line your cursor is on
vim.opt.cursorline = true
-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 250
-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Highlight text for some time after yanking
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
	pattern = "*",
	callback = function()
		vim.highlight.on_yank()
	end,
	desc = "Highlight yank",
})

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.opt.confirm = true
