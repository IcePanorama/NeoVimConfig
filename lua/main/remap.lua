vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- when you have text highlighted, move it up and down w/ shift-j/k
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- normal J func but keeps cursor in place
vim.keymap.set("n", "J", "mzJ`z")

-- normal C-d/C-u func, but your cursor stays in the middle of the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- search terms stay in the middle while moving up/down
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- when you copy and paste over somthing, what you copied stays in the buffer 
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- opens sys clipboard so u can use 'ap' for ex to copy a whole paragraph and
-- paste it in firefox
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete into void register
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- disables Q
vim.keymap.set("n", "Q", "<nop>")
-- opens a new terminal instance, need to rewrite for my terminal prog
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- places word ur cursor is over into a find and replace at the bot
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- executes chmod +x on whatever file ur working on 
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- opens packer.lua file
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/main/packer.lua<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
