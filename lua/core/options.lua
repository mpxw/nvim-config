local opt = vim.opt

-- 定义一个配置表，key是选项名，value是要设置的值
local options = {
  relativenumber = true,
  number = true,
  
  -- 缩进
  tabstop = 2,
  shiftwidth = 2,
  expandtab = true, -- 使用空格而不是制表符
  autoindent = true,
  
  -- 防止包裹(不进行自动换行)
  wrap = false,
  
  -- 高亮光标所在行
  cursorline = true,
  
  -- 默认新窗口右和下
  splitright = true,
  splitbelow = true,
  
  -- 搜索
  ignorecase = true,
  smartcase = true,
  
  -- 外观
  termguicolors = true, -- 真彩显示
  
  -- 其他
  breakindent = true, -- 换行后的代码保存与原行相同的缩进
  writebackup = false, -- 禁用文件覆盖时的备份功能
  completeopt = "menu,menuone,noselect", -- 调整补全菜单
}

-- 批量设置选项
for key, value in pairs(options) do
  opt[key] = value
end

-- 需要特殊处理的选项（如调用方法而非简单赋值）
opt.mouse:append("a")           -- 启用鼠标
opt.clipboard:append("unnamedplus") -- 系统剪贴板

-- 注释掉的配置可以放在这里方便管理
local commented_options = {
  -- signcolumn = "yes",
  -- fillchars = {eob = ""},        -- 关闭文件末尾的 '~' 符号
  -- showmode = false,              -- 不在命令行中显示模式
  -- updatetime = 300,              -- 插件触发频率
  -- list = true,                   -- 显式展示空格、制表符
  -- listchars = { tab = "» ", trail = "·", nbsp = "␣" },
}

-- 如果需要的话也可以取消注释并添加到options表中
-- for key, value in pairs(commented_options) do
--   opt[key] = value
-- end

-- vim.cmd[[colorscheme tokyonight-moon]]
