vim.pack.add { 'https://github.com/monaqa/dial.nvim' }

vim.keymap.set({ 'n', 'v' }, '<C-a>', '<Plug>(dial-increment)', { remap = true })
vim.keymap.set({ 'n', 'v' }, '<C-x>', '<Plug>(dial-decrement)', { remap = true })
vim.keymap.set({ 'n', 'v' }, 'g<C-a>', 'g<Plug>(dial-increment)', { remap = true })
vim.keymap.set({ 'n', 'v' }, 'g<C-x>', 'g<Plug>(dial-decrement)', { remap = true })

local augend = require 'dial.augend'

local function add_constant(elements)
  return augend.constant.new {
    elements = elements,
    cyclic = true,
    word = true,
  }
end

require('dial.config').augends:register_group {
  default = {
    augend.integer.alias.decimal,
    augend.integer.alias.hex,
    augend.integer.alias.binary,
    augend.date.alias['%Y/%m/%d'],
    augend.date.alias['%H:%M'],
    augend.constant.alias.ja_weekday,
    augend.constant.alias.ja_weekday_full,
    augend.constant.alias.bool,
    augend.misc.alias.markdown_header,
    add_constant { 'and', 'or' },
    add_constant { 'enable', 'disable' },
    add_constant { '&&', '||' },
    add_constant { 'TRUE', 'FALSE' },
    add_constant { 'private', 'public' },
    add_constant { 'left', 'right' },
    add_constant {
      'zero',
      'one',
      'two',
      'three',
      'four',
      'five',
      'six',
      'seven',
      'eight',
      'nine',
      'ten',
      'eleven',
      'twelve',
    },
    add_constant {
      'Zero',
      'One',
      'Two',
      'Three',
      'Four',
      'Five',
      'Six',
      'seven',
      'Eight',
      'Nine',
      'Ten',
      'Eleven',
      'Twelve',
    },
    add_constant {
      'noll',
      'en',
      'ett',
      'två',
      'tre',
      'fyra',
      'fem',
      'sex',
      'sju',
      'åtta',
      'nio',
      'tio',
      'elva',
      'tolv',
    },
    add_constant {
      'noll',
      'En',
      'Ett',
      'Två',
      'Tre',
      'Fyra',
      'Fem',
      'sex',
      'Sju',
      'Åtta',
      'Nio',
      'Tio',
      'Elva',
      'Tolv',
    },
  },
}
