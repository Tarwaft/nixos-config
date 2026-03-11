return {
	"mfussenegger/nvim-dap",
	lazy = true,
	-- Copied from LazyVim/lua/lazyvim/plugins/extras/dap/core.lua and
	-- modified.
	keys = {
		{
			"<leader>db",
			function()
				require("dap").toggle_breakpoint()
			end,
			desc = "Toggle Breakpoint",
		},

		{
			"<leader>dc",
			function()
				require("dap").continue()
			end,
			desc = "Continue",
		},

		{
			"<leader>dC",
			function()
				require("dap").run_to_cursor()
			end,
			desc = "Run to Cursor",
		},

		{
			"<leader>dT",
			function()
				require("dap").terminate()
			end,
			desc = "Terminate",
		},
		{
			"<Right>",
			function()
				require("dap").step_into()
			end,
			desc = "Step Into",
		},
		{
			"<Down>",
			function()
				require("dap").step_over()
			end,
			desc = "Step Over",
		},
		{
			"<Left>",
			function()
				require("dap").step_out()
			end,
			desc = "Step Out",
		},
		{
			"<Up>",
			function()
				require("dap").restart_frame()
			end,
			desc = "Restart Frame",
		},
	},
	config = function()
		local dap = require("dap")
		dap.adapters.lldb = {
			type = "executable",
			command = "lldb-dap", -- or lldb-dap
			name = "lldb",
		}

		dap.configurations.cpp = {
			{
				name = "Launch",
				type = "lldb",
				request = "launch",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				cwd = "${workspaceFolder}",
				stopOnEntry = false,
				env = {
					LD_LIBRARY_PATH = os.getenv("LD_LIBRARY_PATH") or "",
				},
				args = {},
			},
		}

		dap.configurations.c = dap.configurations.cpp
		dap.configurations.rust = dap.configurations.cpp
	end,
}
