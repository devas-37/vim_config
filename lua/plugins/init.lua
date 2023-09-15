local status, packer = pcall(require, "packer")

if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	use("wbthomason/packer.nvim")
	-- Colorschema
	use("oxfist/night-owl.nvim")
	use("svrana/neosolarized.nvim")

	use("nvim-lualine/lualine.nvim")
	use("neovim/nvim-lspconfig")
	use({
		"glepnir/lspsaga.nvim",
	})
	use("tjdevries/colorbuddy.nvim")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	-- neo Tree
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	})

	--Autocompletion
	use("onsails/lspkind-nvim")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/nvim-cmp")
	use("L3MON4D3/LuaSnip")

	-- Treesitter
	use("nvim-treesitter/nvim-treesitter")

	use("simrat39/rust-tools.nvim")

	-- Autotag and autopair
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	--Telescope
	use({
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({
		"nvim-telescope/telescope-file-browser.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	})
	use("kyazdani42/nvim-web-devicons")

	use("akinsho/bufferline.nvim")
	use("voldikss/vim-floaterm")
	-- Formatter
	use("jose-elias-alvarez/null-ls.nvim")
	use("MunifTanjim/prettier.nvim")

	--Linter
	use("MunifTanjim/eslint.nvim")
	use({
		"norcalli/nvim-colorizer.lua",
	})
	--Comment
	use({
		"numToStr/Comment.nvim",
	})
	--Gits signs
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({})
		end,
	})
	use({
		"dinhhuy258/git.nvim",
	})
	--Lazygit
	use({
		"kdheepak/lazygit.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})
	use({
		"mfussenegger/nvim-lint",
	})
	use("NvChad/nvterm")
end)
