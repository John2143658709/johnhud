jhud.wmod("chat")
jhud.rlib("file")
setmetatable(this,{
    __call = function(_, key, callback)
        if not Idstring then return end
        _._binds = _._binds or {}
        _._binds[_:sanatize(key)] = callback
    end
})

function this:sanatize(key)
    key = tonumber(key) or key
    if key == 0 then
        return 11
    elseif type(key) == 'string' then
        key = string.lower(key)
        return jhud.keyboard:has_button(Idstring(key)) and jhud.keyboard:button_index(Idstring(key))
    end
end

function this:clearBinds()
    self._binds = {}
end
function this:__init()
    self:clearBinds()
end
function this:__update(t, dt)
    if not (
        (managers.menu_component._blackmarket_gui and managers.menu_component._blackmarket_gui._renaming_item) or
        (managers.hud and managers.hud._chat_focus) or
        (managers.menu_component._game_chat_gui and managers.menu_component._game_chat_gui:input_focus())
        ) then
        for key, cbk in pairs(self._binds) do
            if jhud.keyboard:pressed(key) then
                cbk(t, dt)
                break
            end
        end
    end
end
