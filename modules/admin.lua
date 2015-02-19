this.getPlayers = function(self, ...)
	return jhud.player:getPlayers(...)
end

function this:kick(chat, on)
	local plys = self:getPlayers(on)
	_(on)

	for i,v in pairs(plys) do
		v:kick()
	end
end

function this:__init()
	jhud.chat:addCommand("kick", function(...) self:kick(true, ...) end)
	jhud.chat:addCommand("kickb", function(...) self:kick(false, ...) end)
end