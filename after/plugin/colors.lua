function ColorMyPencils(color)
	color = color or "tokyonight"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none"})	--this and next line for transparency
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})

end

ColorMyPencils()
