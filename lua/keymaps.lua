-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>cd", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Explorer
vim.keymap.set("n", "\\", ":lua Snacks.explorer()<CR>", { silent = true })

-- Todo
vim.keymap.set("n", "<leader>ot", ":TodoTelescope<CR>", { desc = "Search Todos with Telescope" })
vim.keymap.set("n", "<leader>ol", ":TodoLocList<CR>", { desc = "Location list all todos" })
vim.keymap.set("n", "<leader>oq", ":TodoQuickFix<CR>", { desc = "Quickfix all todos" })

-- Keymap sessions
-- load the session for the current directory
vim.keymap.set("n", "<leader>qs", function()
  require("persistence").load()
end, { desc = "Load session directory" })

-- select a session to load
vim.keymap.set("n", "<leader>qS", function()
  require("persistence").select()
end, { desc = "Select session" })

-- load the last session
vim.keymap.set("n", "<leader>ql", function()
  require("persistence").load { last = true }
end, { desc = "Load last sessions" })

-- stop Persistence => session won't be saved on exit
vim.keymap.set("n", "<leader>qd", function()
  require("persistence").stop()
end, { desc = "Stop persistence" })

-- window manager
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
keymap("n", "<leader>wv", ":vsplit<CR>", { desc = "Split window vertically" })
keymap("n", "<leader>wh", ":split<CR>", { desc = "Split window horizontally" })

-- Navigasi antar window
keymap("n", "<C-h>", "<C-w>h", opts) -- Pindah ke kiri
keymap("n", "<C-l>", "<C-w>l", opts) -- Pindah ke kanan
keymap("n", "<C-j>", "<C-w>j", opts) -- Pindah ke bawah
keymap("n", "<C-k>", "<C-w>k", opts) -- Pindah ke atas

-- Resize window
keymap("n", "<C-Up>", ":resize +2<CR>", opts) -- Tambah tinggi
keymap("n", "<C-Down>", ":resize -2<CR>", opts) -- Kurangi tinggi
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts) -- Kurangi lebar
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts) -- Tambah lebar

-- Menyamakan ukuran semua window
keymap("n", "<leader>we", "<C-w>=", opts)

-- Menutup window aktif
keymap("n", "<leader>wq", ":close<CR>", opts)

-- vim: ts=2 sts=2 sw=2 et
