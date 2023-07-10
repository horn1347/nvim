vim.g.mapleader = " "

local map = vim.keymap

--general
map.set("n", "<leader>nh", ":nohl<CR>");
map.set("n", "x", '"x')

--increase/decrease entered numbers
map.set("n", "<leader>+", "<C-a>")
map.set("n", "<leader>-", "<C-x>")

--splitting windwos, "d" stands for dividei
--Tmux plugin grants bindings for navigating
--CRTL h moves left
--CRTL L moves right
--CRTL j moves up
--CRTL k moves down
-- classic homerow navigation
map.set("n", "<leader>dv", "<C-w>v")
map.set("n", "<leader>dh", "<C-w>s")
map.set("n", "<leader>de", "<C-w>=")
map.set("n", "<leader>dx", ":close<CR>")

--Tab navigation
map.set("n", "<leader>to", ":tabnew<CR>") --new
map.set("n", "<leader>tx", ":tabclose<CR>") --close current
map.set("n", "<leader>tn", ":tabn<CR>") -- next
map.set("n", "<leader>tp", ":tabp<CR>") --previous


--NVimTree
map.set("n", "<leader>e", ":NvimTreeToggle<CR>")

--telescoope
map.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
map.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
map.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
map.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
map.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

