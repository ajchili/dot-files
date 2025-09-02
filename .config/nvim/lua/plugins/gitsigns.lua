return {
	"lewis6991/gitsigns.nvim",
	cmd = "Gitsigns",
	event = "BufReadPre",
	opts = {
		attach_to_untracked = true,
		current_line_blame = true
	}
}
