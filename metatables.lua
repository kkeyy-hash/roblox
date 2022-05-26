local expectedMain = 'george'
local respHash = ""
local MAINCODE =
	setmetatable(
	{
		[expectedMain] = function(...)
            print('hi')
        end
	},
	{
		__index = function(s, idx)
			if idx ~= expectedMain then
				return (function()
					return function()
						print('crack')
					end
				end)()
			end
			return s[idx]
		end
	}
)

return MAINCODE[respHash](...)
