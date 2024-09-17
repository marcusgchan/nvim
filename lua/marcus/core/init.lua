require("marcus.core.options")
require("marcus.core.keymaps")

local venv = os.getenv("VIRTUAL_ENV")
if venv then
	vim.g.python3_host_prog = venv .. "/bin/python"
else
	vim.g.python3_host_prog = "/usr/bin/python3"
end
