-- load standard vis module, providing parts of the Lua API
require('vis')

-- ensure non-empty files have a line ending
vis.events.subscribe(vis.events.FILE_SAVE_PRE, function(file, path)
	if file.size ~= 0 and file:content(file.size - 1, 1) ~= "\n" then
		file:insert(file.size, "\n")
	end
	return true
end)
