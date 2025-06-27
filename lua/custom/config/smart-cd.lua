local function get_smart_root(path)
  local home = vim.fn.expand '$HOME'

  for _ = 1, 4 do
    local parent = vim.fn.fnamemodify(path, ':h')
    if parent == path or parent == home then
      path = home
      break
    end
    path = parent
  end

  if path:find(home, 1, true) == 1 then
    return path
  else
    return vim.fn.getcwd()
  end
end

vim.api.nvim_create_autocmd('BufEnter', {
  callback = function()
    local file_dir = vim.fn.expand '%:p:h'
    if file_dir == '' then
      return
    end

    local smart_root = get_smart_root(file_dir)
    vim.cmd('cd ' .. smart_root)
  end,
})

local builtin = require 'telescope.builtin'

function _G.smart_find_files()
  local file_dir = vim.fn.expand '%:p:h'
  local smart_root = get_smart_root(file_dir)
  builtin.find_files { cwd = smart_root }
end

vim.keymap.set('n', '<leader>sc', '<cmd>lua smart_find_files()<CR>', { desc = '[S]earch [C]lose directorys' })
