require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- normal mode keymaps
vim.keymap.del("i", "<C-b>")
vim.keymap.del("i", "<C-e>")

-- Your custom insert mode mappings:
map("i", "<C-e>", "<C-o>e", { desc = "End of next word (insert mode)" })
map("i", "<C-b>", "<C-o>b", { desc = "Beginning of word (insert mode)" })
map("i", "<C-0>", "<C-o>0", { desc = "Start of line (insert mode)" })
map("i", "<C-4>", "<C-o>$", { desc = "End of line (insert mode)" })

-- Custom Remaps
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "J", "mzJ`z")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

map("n", "<leader>vwm", function()
  require("vim-with-me").StartVimWithMe()
end)
map("n", "<leader>svwm", function()
  require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
map("x", "<leader>p", [["_dP]])
vim.keymap.del("n", "<leader>pt")
map("i", "<C-v>", "<C-r>+", { noremap = true, silent = true, desc = "Paste system clipboard in insert mode" })

-- next greatest remap ever : asbjornHaland
map({ "n", "v" }, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])
map({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
map("i", "<C-c>", "<Esc>")

map("n", "Q", "<nop>")
-- map("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- map("n", "<leader>f", vim.lsp.buf.format)

map("n", "<C-k>", "<cmd>cnext<CR>zz")
map("n", "<C-j>", "<cmd>cprev<CR>zz")
map("n", "<leader>k", "<cmd>lnext<CR>zz")
map("n", "<leader>j", "<cmd>lprev<CR>zz")

map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

map("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>")
map("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

map("n", "<leader><leader>", function()
  vim.cmd "so"
end)
map("n", "<leader>a", "ggVG", { noremap = true, silent = true })

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.keymap.set("n", "<leader>mp", ":MarkdownPreview<CR>", { buffer = true, desc = "Start Markdown Preview" })
    vim.keymap.set("n", "<leader>ms", ":MarkdownPreviewStop<CR>", { buffer = true, desc = "Stop Markdown Preview" })
    vim.keymap.set("n", "<leader>mt", ":MarkdownPreviewToggle<CR>", { buffer = true, desc = "Toggle Markdown Preview" })
  end,
})

-- Navigate to the next page in the PDF
map("n", "<leader>jj", "<cmd>:lua require('pdfview.renderer').next_page()<CR>", { desc = "PDFview: Next page" })
--
-- -- Navigate to the previous page in the PDF
map("n", "<leader>kk", "<cmd>:lua require('pdfview.renderer').previous_page()<CR>", { desc = "PDFview: Previous page" })
