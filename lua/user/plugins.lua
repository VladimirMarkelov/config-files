local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print("Installing packer close and reopen Neovim...")
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
--vim.cmd([[
--  augroup packer_user_config
--    autocmd!
--    autocmd BufWritePost plugins.lua source <afile> | PackerSync
--  augroup end
--]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
)

return require('packer').startup(function()
	use 'vim-scripts/LargeFile'
	use 'tpope/vim-surround'
	use 'wellle/targets.vim'
	-- use 'tomtom/tcomment_vim' " VimL plugin
	use {
        'numToStr/Comment.nvim',
        config = function() require('Comment').setup() end
    } -- Lua plugin - shows ugly error on file without comment support
	-- use 'tyru/caw.vim' " add/remove comment
	use 'tommcdo/vim-exchange'
	use 'tpope/vim-repeat'
	use 'nishigori/increment-activator'
	use 'sheerun/vim-polyglot'
	use 'google/vim-searchindex'
	use 'jmcantrell/vim-numbered'
	use 'lukhio/vim-mapping-conflicts'
	use 'andrewradev/linediff.vim'
	use 'altercation/vim-colors-solarized' -- colorscheme
	use 'terryma/vim-expand-region'
	use 'tommcdo/vim-lion'
	use 'jmcantrell/vim-diffchanges'
	-- use 'tpope/vim-characterize'
	use 'markonm/traces.vim'
	use 'tpope/vim-abolish'
	use 'jeetsukumaran/vim-buffergator'
	use 'ntpeters/vim-better-whitespace'
	use 'kshenoy/vim-signature'
	use 'itchyny/vim-cursorword'
	use 'gruvbox-community/gruvbox'  -- colorscheme
	use 'unblevable/quick-scope'
	-- use 'junegunn/rainbow_parentheses.vim'
	use 'itchyny/lightline.vim'
	use 'reedes/vim-wordy'
	use 'farmergreg/vim-lastplace'
	use 'powerman/vim-plugin-AnsiEsc'
	use 'joereynolds/place.vim'
	use 'editorconfig/editorconfig-vim'
	use 'majutsushi/tagbar'
	use 'sainnhe/forest-night'  -- colorscheme
	use 'godlygeek/tabular'
	use 'junegunn/vim-peekaboo'
	use 'dkarter/bullets.vim'
	use 'EdenEast/nightfox.nvim'
	use 'rust-lang/rust.vim'
	use 'NLKNguyen/papercolor-theme'  -- Good light colorscheme
	use 'NoahTheDuke/vim-just'
end)
