local o = vim.opt
local g = vim.g

-- leader
g.mapleader = " "
g.maplocalleader = "\\"

-- visuals
o.termguicolors = true
o.background = "dark"
o.signcolumn = "yes"
o.scrolloff = 12
o.sidescrolloff = 24

-- lines
o.number = true
o.wrap = false
o.cursorline = false

-- indentation
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.autoindent = true
o.backspace = "indent,eol,start"

-- search
o.ignorecase = true
o.smartcase = true

-- splits
o.splitright = true
o.splitbelow = true

-- sessions
o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
o.swapfile = false
o.undofile = true
o.undodir = os.getenv("HOME") .. "/.local/undodir"
o.backup = false

-- mouse
o.mouse = "a"
