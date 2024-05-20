-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
-- vim.opt.hlsearch = true
-- vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>jg', ':new | r !quicktype -l go --just-types --no-maps #<CR>', { desc = '[J]SON to [G]o' })

-- get the nice visual block movement (with auto indent)
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
-- My custom keymaps
-- Delete whole word in insert
if vim.loop.os_uname().sysname == 'Darwin' then
  vim.keymap.set('i', '<ESC><BS>', '<C-W>', { desc = 'Delete whole word (mac)' }) -- mac keybinding since using alt/option nvim sees it as Esc
else
  vim.keymap.set('i', '<C-BS>', '<C-W>', { desc = 'Delete whole word (win)' })
end

-- keybinds for word movement in normal mode
vim.keymap.set('n', 'q', 'b')
vim.keymap.set('n', '<ESC><Left>', 'b')
vim.keymap.set('n', '<ESC><Right>', 'e')
vim.keymap.set('n', '<C-Left>', 'b')
vim.keymap.set('n', '<C-Right>', 'e')
-- keybinds for word movement in insert mode
-- vim.keymap.set('i', '<ESC><Left>', '<S-Left>')
-- vim.keymap.set('i', '<ESC><Right>', '<S-Right>')
vim.keymap.set('i', '<ESC><Left>', '<S-Left>')
vim.keymap.set('i', '<ESC><Right>', '<ESC>ea')
vim.keymap.set('i', '<C-Right>', '<ESC>ea')
vim.keymap.set('i', '<S-Right>', '<ESC>ea')

-- keybinds for centering view after pg up/dn
vim.keymap.set('n', '<PageUp>', '<C-u>zz')
vim.keymap.set('n', '<PageDown>', '<C-d>zz')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' }) -- TODO: Remove b/c added in 0.10
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' }) -- TODO: Remove b/c added in 0.10
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' }) -- TODO: Remove b/c added in 0.10 <C-W>d
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- vim: ts=2 sts=2 sw=2 et
