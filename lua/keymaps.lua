local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap




--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<S-h>", "<C-w>h", opts)
keymap("n", "<S-j>", "<C-w>j", opts)
keymap("n", "<S-k>", "<C-w>k", opts)
keymap("n", "<S-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)


keymap("n", "<C-j>", "5j", opts)
keymap("n", "<C-k>", "5k", opts)
keymap("v", "<C-j>", "5j", opts)
keymap("v", "<C-k>", "5k", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<C-l>", ":bnext<CR>", opts)
keymap("n", "<C-h>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)


-- split window
keymap("n", "s", "", opts)
-- windows 分屏快捷键
keymap("n", "sv", ":vsp<CR>", opts)
keymap("n", "sh", ":sp<CR>", opts)
-- 关闭当前
keymap("n", "sc", "<C-w>c", opts)
-- 关闭其他
keymap("n", "so", "<C-w>o", opts) -- close others

-- Terminal --
-- Better terminal navigation
--keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
--keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
--keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
--keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Telecope
keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
--keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = true }))<cr>", opts)
keymap("n","<c-t>","<cmd>lua require('telescope.builtin').live_grep()<cr>",opts)
-- keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

-- nvimtree
keymap("n", "<leader>m", ":NvimTreeToggle<cr>", opts)
keymap("n", "<A-m>", ":NvimTreeToggle<cr>", opts)


-- local coc_opts = {
-- 	noremap = false,
-- 	silent = true
-- }
--
-- local coc_expr_opts = {expr = true,noremap = true,silent = true}
-- -- coc-nvim
-- keymap("n", "gd","<Plug>(coc-definition)",coc_opts)
-- keymap("n", "gy","<Plug>(coc-type-definition)",coc_opts)
-- keymap("n", "gi","<Plug>(coc-implementation)",coc_opts)
-- keymap("n", "gr","<Plug>(coc-references)",coc_opts)
--
-- function _G.CheckBackspace()
--     local col = vim.api.nvim_win_get_cursor(0)[2]
--     return (col == 0 or vim.api.nvim_get_current_line():sub(col, col):match('%s')) and true
-- end
-- keymap("i", "<TAB>", "coc#pum#visible() ? coc#pum#next(1):v:lua.CheckBackspace() ? \"\\<Tab>\" :coc#refresh()", coc_expr_opts)
-- keymap("i", "<S-TAB>", "coc#pum#visible() ? coc#pum#prev(1) : \"\\<C-h>\"", coc_expr_opts)
-- keymap("i", "<CR>", "coc#pum#visible() ? coc#pum#confirm() : \"\\<C-g>u\\<CR>\\<c-r>=coc#on_enter()\\<CR>\"", coc_expr_opts)

-- buffline
keymap("n", "<C-w>", ":Bdelete!<CR>", opts)

-- comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>',opts)


-- dap
-- keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
-- keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
-- keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
-- keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
-- keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
-- keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
-- keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
-- keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
-- keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)


-- fold
keymap("n", "zz", ":foldclose<CR>", opts)
keymap("n", "Z", ":foldopen<CR>", opts)



-- insert fix code
local code = [[
#include <bits/stdc++.h>

using namespace std;

void solve() {
}

int main() {
	int t;
	cin >> t;
	while (t--) {
		solve();
    }
	return 0;
}
]]

-- local function processNewlines(text)
--     local format = vim.bo.fileformat
--     if format == 'dos' then
--         -- Windows格式，将'\n'替换为'\r\n'
--         text = text:gsub('\n', '\r\n')
--     elseif format == 'unix' then
--         -- Unix格式，保持不变
--     else
--         -- 其他格式，默认按照Unix格式处理
--         text = text:gsub('\n', '\r\n')
--     end
--     return text
-- end

-- local function processNewlines(text)
--     return text:gsub('\n', vim.api.nvim_replace_termcodes('\n', true, false, true))
-- end

_G.insertCode =  function()
	local current_line = vim.api.nvim_get_current_line()
    local current_row, current_col = unpack(vim.api.nvim_win_get_cursor(0))
    vim.api.nvim_buf_set_lines(0, current_row, current_row, true, vim.split(code, '\n'))
    vim.api.nvim_win_set_cursor(0, { current_row + #vim.split(code, '\n'), current_col })
    -- local current_buffer = vim.api.nvim_get_current_buf()
	-- local processed_code = processNewlines(code)
    -- vim.api.nvim_put({ processed_code }, 'l', true, true)
    -- vim.api.nvim_buf_set_option(current_buffer, 'modified', false)
end


keymap("n", "cf","<cmd>lua insertCode()<CR>", opts)
