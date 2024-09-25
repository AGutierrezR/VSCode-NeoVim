local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

function GetChar(prompt)
	vim.api.nvim_echo({ { prompt, "Input" } }, true, {})
	local char = vim.fn.getcharstr()
	-- That's the escape character (<Esc>). Not sure how to specify it smarter
	-- In other words, if you pressed escape, we return nil
	if char == '' then
		char = nil
	end
	return char
end

function Validate_register(register)
  if register == 'q' then
    return '+'
  elseif register == 'w' then
    return '0'
  elseif register == "'" then
    return '"'
  else
    return register
  end
end

function Move_default_to_other()
	local char = GetChar("Register: ")
	if not char then return end
	local register = Validate_register(char)
	local default_contents = vim.fn.getreg('"')
	vim.fn.setreg(register, default_contents)
  vim.api.nvim_echo({ { "register moved to: " .. char } }, true, {})
end

keymap({ 'n', 'v' }, '<leader>g', Move_default_to_other)