local function pct(n)
    return math.floor(n*100)
end

function this:normalSHD()
    local pcts = {}
    for x, k in pairs(managers.criminals._characters) do
        if(k.peer_id) then
            pcts[k.peer_id] = {[-1] = json.null}
        end
    end
    for i,v in pairs(self.shd) do
        for ii,vv in pairs(v.suspects or {}) do
            for x, k in pairs(managers.criminals._characters) do
                if(vv.u_suspect == k.unit) then
                    pcts[k.peer_id] = pcts[k.peer_id] or {}
                    table.insert(pcts[k.peer_id], vv.status)
                end
            end
        end
    end
    return pcts
end

local lastWhisper = true
local textheight = 30
local lastSuspicion = {}
function this:__update(t, dt)
    if not (managers and managers.groupai and managers.groupai:state()) then return end
    --This relies on the fact that you can
    --never return to whisper after leaving
    if not lastWhisper then return end

    if not self.panel then
        local h = self.config.num*textheight
        self.panel = jhud.createPanel()
        self.panel:set_x((jhud.resolution.x - 100)/2)
        self.panel:set_y((jhud.resolution.y - h)/2)
        self.panel:set_w(100)
        self.panel:set_h(h)
        self.textpanels = {}
        for i = 1, self.config.num do
            self.textpanels[i] = self.panel:text{
                name = "detind"..i,
                align = "center",
                font = tweak_data.hud_present.text_font,
                font_size = tweak_data.hud_present.text_size
            }
            self.textpanels[i]:set_y((i-1)*textheight)
        end
    end
    if self.textpanels then
        if lastWhisper ~= jhud.whisper then
            lastWhisper = jhud.whisper
            for i,v in pairs(self.textpanels) do
                v:set_visible(jhud.whisper)
            end
            if not jhud.whisper then return end
        end

        if jhud.net:isServer() then
            self.shd = self.shd or managers.groupai:state()._suspicion_hud_data

            local oldAmounts = self.amounts
            self.amounts = self:normalSHD()
            --local update = false
            ----TODO Update check
            --if update then
                --jhud.net("jhud.suspct.amounts", jhud.serialize(self.amounts), true)
            --end
        end

        local suspicionAmount = self.amounts[jhud.net:getPeerID()] or {}

        for i = 1, 5 do
            if suspicionAmount[i] then
                self.textpanels[i]:set_text(pct(suspicionAmount[i]).."%")
                self.textpanels[i]:set_color(math.lerp(
                    Color(0, .8, .8),
                    Color(.8, .2, 0),
                    suspicionAmount[i]
                ))
                self.textpanels[i]:set_visible(true)
            else
                self.textpanels[i]:set_visible(false)
            end
        end
    end
end

function this:__init()
    self.amounts = {}
    if not jhud.net:isServer() then
        jhud.net:hook("jhud.suspct.amounts", function(data)
            self.amounts = jhud.deserialize(data)
        end)
    end
end
