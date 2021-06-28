local blur = Material("pp/blurscreen")
function framework(panel, amount)
  local x, y = panel:LocalToScreen(0, 0)
  local scrW, scrH = ScrW(), ScrH()
  surface.SetDrawColor(255, 255, 255)
  surface.SetMaterial(blur)

  for i = 1, 3 do
    blur:SetFloat("$blur", (i / 3) * (amount or 6))
    blur:Recompute()
    render.UpdateScreenEffectTexture()
    surface.DrawTexturedRect(x * -1, y * -1, scrW, scrH)
  end
end

local ply = LocalPlayer()
local frametext = draw.SimpleText
local tallbal = ScrH() * .4 * .070
local scrw, scrh = ScrW(), ScrH()