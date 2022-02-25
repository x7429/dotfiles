function getIp()
	local ip = io.popen("ifconfig | grep -Eo 'inet (addr:)?([0-9]*\\.){3}[0-9]*' | grep -Eo '([0-9]*\\.){3}[0-9]*' | grep -v '127.0.0.1'"):read("*all")
	vim.cmd("normal i" .. ip)
end
