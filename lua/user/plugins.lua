local fn = vim.fn

-- Automatically install lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({
	'vim-scripts/LargeFile',
	'wellle/targets.vim',
	{
        'numToStr/Comment.nvim',
        config = function() require('Comment').setup() end
    }, -- Lua plugin - shows ugly error on file without comment support
	{
		'kylechui/nvim-surround',
		config = function()
    	    require("nvim-surround").setup({
        	    -- Configuration here, or leave empty to use defaults
	        })
	    end
	},
	'tommcdo/vim-exchange',
	'tpope/vim-repeat',
	'nishigori/increment-activator',
	'sheerun/vim-polyglot',
	-- use 'google/vim-searchindex', -- since vim 8.1.1270 it can be replaced with ":set shortmess-=S"
	'jmcantrell/vim-numbered',
	'lukhio/vim-mapping-conflicts',
	'andrewradev/linediff.vim',
	'altercation/vim-colors-solarized', -- colorscheme
	'terryma/vim-expand-region',
	'tommcdo/vim-lion',
	'jmcantrell/vim-diffchanges',
	-- use 'tpope/vim-characterize',
	'markonm/traces.vim',
	'tpope/vim-abolish',
	-- 'jeetsukumaran/vim-buffergator',
	'ntpeters/vim-better-whitespace',
	'kshenoy/vim-signature',
	'itchyny/vim-cursorword', -- in VimScript
	--{
	--	'unblevable/quick-scope', -- does not work with lazy
	--	config = function()
	--		vim.cmd [[
	--			" Trigger a highlight in the appropriate direction when pressing these keys:
    --			let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
    --  			highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
    --  			highlight QuickScopeSecondary guifg='#afff5f' gui=underline ctermfg=81 cterm=underline
    -- 			let g:qs_max_chars=150
	--	    ]]
	--    end,
	--}, -- does not work with lazy
	-- use 'junegunn/rainbow_parentheses.vim',
	'itchyny/lightline.vim',
	'reedes/vim-wordy',
	'farmergreg/vim-lastplace',
	'powerman/vim-plugin-AnsiEsc',
	'joereynolds/place.vim',
	-- use 'editorconfig/editorconfig-vim', -- NeoVim built-in since 0.9
	-- 'majutsushi/tagbar',
	'sainnhe/forest-night',  -- colorscheme
	'godlygeek/tabular',
	-- 'junegunn/vim-peekaboo', -- show you the contents of the registers
	'dkarter/bullets.vim',
	'NLKNguyen/papercolor-theme',  -- Good light colorscheme
	'NoahTheDuke/vim-just',
	-- use 'yaocccc/nvim-hlchunk', -- highlite block of code (draws a "bracket" at the left)
	'gruvbox-community/gruvbox',  -- colorscheme
	'sainnhe/edge',  -- colorscheme
	'savq/melange-nvim',  -- colorscheme
	'Shatur/neovim-ayu',  -- colorscheme
	-- 'ludovicchabant/vim-gutentags', -- automatic tags management
	'ramojus/mellifluous.nvim', -- colorscheme
	{
		'dcampos/nvim-snippy',
		config = function() require('snippy').setup({
			mappings = {
		        [{'i', 's'}] = {
        		   ['<Tab>'] = 'expand_or_advance',
		           ['<S-Tab>'] = 'previous',
		        },
		        [{'x'}] = {
          			  ['<Tab>'] = 'cut_text',
			    }
		    },
		}) end
	},
	-- {
	-- 	'axkirillov/hbac.nvim',
	-- 	config = function () require("hbac").setup({
	-- 		autoclose = true, -- set autoclose to false if you want to close manually
	-- 		threshold = 8, -- hbac will start closing unedited buffers once that number is reached
	-- 		close_command = function(bufnr)
	-- 			vim.api.nvim_buf_delete(bufnr, {})
	-- 		end,
	-- 		close_buffers_with_windows = false, -- hbac will close buffers with associated windows if this option is `true`
	-- 	}) end
	-- },
	{ "rose-pine/neovim", name = "rose-pine" },
	'yorickpeterse/vim-paper', -- light colorscheme
	'ctrlpvim/ctrlp.vim', -- main plugin
	'tacahiroy/ctrlp-funky', -- requires ctrlp.vim
	{
		'matbme/JABS.nvim',
		config = function() require('jabs').setup({
			use_devicons = false,
			symbols = {
		        current = "C", -- default 
    		    split = "S", -- default 
        		alternate = "A", -- default 
		        hidden = "H", -- default ﬘
    		    locked = "L", -- default 
        		ro = "R", -- default 
	        	edited = "E", -- default 
	    	    terminal = "T", -- default 
    	    	default_file = "D", -- Filetype icon if not present in nvim-web-devicons. Default 
	    	    terminal_symbol = ">_" -- Filetype icon for a terminal split. Default 
	    	}
    	}) end
    },
})
