-- Bootstrap snippet from Packer Github repository https://github.com/wbthomason/packer.nvim#bootstrapping 
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end
  
local packer_bootstrap = ensure_packer()
  
return require('packer').startup(function(use)
    -- Let Packer manage itself
    use 'wbthomason/packer.nvim'

    -- Better colorschemes
    use 'morhetz/gruvbox'
    use 'rebelot/kanagawa.nvim'
    use 'ayu-theme/ayu-vim'

    if packer_bootstrap then
        require('packer').sync()
    end
end)