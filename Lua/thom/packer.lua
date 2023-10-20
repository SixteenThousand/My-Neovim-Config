-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"
	
	
	-- ++++++++++++ colourschemes ++++++++++++
    use "rebelot/kanagawa.nvim"
	
	use "sainnhe/everforest"
	
	use "marko-cerovac/material.nvim"
	
	use "sainnhe/sonokai"
	
	use "rose-pine/neovim"
	
	use "ku-s-h/summerfruit256.vim"
	
	use "shaunsingh/nord.nvim"
	
	use "xero/miasma.nvim"
	
	use "folke/tokyonight.nvim"
	
	-- ++++++++++++ other asthetic stuff ++++++++++++
	use "nvim-tree/nvim-web-devicons"
	
	use {
	  "nvim-lualine/lualine.nvim",
	  requires = { "nvim-tree/nvim-web-devicons", opt = true }
	}
	
	
	-- +++++++++++++ finding stuff ++++++++++++
    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.2",
        -- or                            , branch = "0.1.x",
        requires = { {"nvim-lua/plenary.nvim"} }
    }
	
    -- use {
    --     "theprimeagen/harpoon.nvim",
    -- not right now
	
	
	-- +++++++++++ LSP stuff & syntax highlighting ++++++++++++
    use("nvim-treesitter/nvim-treesitter", {
		run = ":TSUpdate",
		ignore_install = { "latex" }
	})
	
	use "neovim/nvim-lspconfig"
	
	-- ++++++++++++ Comments ++++++++++++
    use {
        "numToStr/Comment.nvim",
        config = function ()
            require("Comment").setup()
        end
    }
	
	-- ++++++++++++ filetype-specific stuff ++++++++++++
	-- autocomplete html tags
	use "alvan/vim-closetag"
	
	use "lervag/vimtex"

	
	-- ++++++++++++ other ++++++++++++
	use "ThePrimeagen/vim-be-good"
	
	use "tpope/vim-fugitive"
	
	-- use "tpope/vim-vinegar"
	
	use {
		'theblob42/drex.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
	}
end)