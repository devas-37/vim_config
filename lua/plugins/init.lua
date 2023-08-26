local status, packer = pcall(require, "packer")

if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use("svrana/neosolarized.nvim")
	use("nvim-lualine/lualine.nvim")
	use("neovim/nvim-lspconfig")
	use({
		"glepnir/lspsaga.nvim",
	})
	use("tjdevries/colorbuddy.nvim")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

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
		tag = "0.1.2",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({
		"nvim-telescope/telescope-file-browser.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	})
	use("kyazdani42/nvim-web-devicons")

	use("akinsho/bufferline.nvim")

	-- Formatter
	use("jose-elias-alvarez/null-ls.nvim")
	use("MunifTanjim/prettier.nvim")

	--Linter
	use("MunifTanjim/eslint.nvim")

	--Gits signs
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({})
		end,
	})
end)
