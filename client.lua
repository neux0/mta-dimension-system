---------------------------------------------------------neux
local odadami = 0
local odadami2 = 0
local odadami3 = 0
local odadami4 = 0
local count = 0 
local count2 = 0 
local count3 = 0 
local count4 = 0 

function dimension1check(dimensionId)
  local count = 0 
  for i, player in ipairs(getElementsByType("player")) do
    if getElementDimension(player) == 1 then
      count = count +1
    end
  end
  odasayisi1 = count
  return count
end

function dimension2check(dimensionId)
  local count2 = 0 
  for i, player in ipairs(getElementsByType("player")) do
    if getElementDimension(player) == 2 then
      count2 = count2 +1
    end
  end
  odasayisi2 = count2
  return count2
end

function dimension3check(dimensionId)
  local count3 = 0 
  for i, player in ipairs(getElementsByType("player")) do
    if getElementDimension(player) == 3 then
      count3 = count3 +1
    end
  end
  odasayisi3 = count3
  return count3
end

function dimension4check(dimensionId)
  local count4 = 0 
  for i, player in ipairs(getElementsByType("player")) do
    if getElementDimension(player) == 4 then
      count4 = count4 +1
    end
  end
  odasayisi4 = count4
  return count4
end
---------------------------------------------------------
---------------------------------------------------------
addEventHandler("onClientResourceStart", resourceRoot,
    function()
		local screenW, screenH = guiGetScreenSize()
        window = guiCreateWindow((screenW - 278) / 2, (screenH - 654) / 2, 278, 598, "Dimension System | F3", false)
        guiSetVisible(window, false)
   		resim = guiCreateStaticImage(0, 29, 278, 160, "header.png", false, window)
        oda1nm = guiCreateLabel(10, 199, 258, 19, "Dimension 1 - 1 player", false, window)
        guiLabelSetHorizontalAlign(oda1nm, "center", false)
        guiLabelSetVerticalAlign(oda1nm, "center")
        join1b = guiCreateButton(10, 228, 119, 46, "Join", false, window)
        oda1st = guiCreateLabel(139, 238, 119, 26, "State: 0/1", false, window)
        guiLabelSetHorizontalAlign(oda1st, "center", false)
        guiLabelSetVerticalAlign(oda1st, "center")
        desing1 = guiCreateLabel(10, 274, 258, 19, "----------------------------------------------------------", false, window)
        guiLabelSetHorizontalAlign(desing1, "center", false)
        guiLabelSetVerticalAlign(desing1, "center")
        oda2nm = guiCreateLabel(10, 303, 258, 19, "Dimension 2 - 2 players", false, window)
        guiLabelSetHorizontalAlign(oda2nm, "center", false)
        guiLabelSetVerticalAlign(oda2nm, "center")
        join2b = guiCreateButton(10, 332, 119, 46, "Join", false, window)
        oda2st = guiCreateLabel(139, 342, 119, 26, "State: 1/2", false, window)
        guiLabelSetHorizontalAlign(oda2st, "center", false)
        guiLabelSetVerticalAlign(oda2st, "center")
	     desing2 = guiCreateLabel(10, 378, 258, 19, "----------------------------------------------------------", false, window)
	     guiLabelSetHorizontalAlign(desing2, "center", false)
	     guiLabelSetVerticalAlign(desing2, "center")
	     oda3isim = guiCreateLabel(10, 407, 258, 19, "Dimension 3 - 3 players", false, window)
	     guiLabelSetHorizontalAlign(oda3isim, "center", false)
	     guiLabelSetVerticalAlign(oda3isim, "center")
	     join3b = guiCreateButton(10, 436, 119, 46, "Join", false, window)
	     oda3st = guiCreateLabel(139, 446, 119, 26, "State: 0/3", false, window)
	     guiLabelSetHorizontalAlign(oda3st, "center", false)
	     guiLabelSetVerticalAlign(oda3st, "center")
	     desing3 = guiCreateLabel(10, 482, 258, 19, "----------------------------------------------------------", false, window)
	     guiLabelSetHorizontalAlign(desing3, "center", false)
	     guiLabelSetVerticalAlign(desing3, "center")
	     oda4isim = guiCreateLabel(10, 511, 258, 19, "Dimension 4 - 4 players", false, window)
	     guiLabelSetHorizontalAlign(oda4isim, "center", false)
	     guiLabelSetVerticalAlign(oda4isim, "center")
	     join4b = guiCreateButton(10, 540, 119, 46, "Join", false, window)
	     oda4st = guiCreateLabel(139, 550, 119, 26, "State: 0/4", false, window)
	     guiLabelSetHorizontalAlign(oda4st, "center", false)
	     guiLabelSetVerticalAlign(oda4st, "center")  
    end
)
---------------------------------------------------------
---------------------------------------------------------
function durumlariyenile ()
	if ( guiGetVisible ( window ) == true ) then 
		dimension1check()
		dimension2check()
		dimension3check()
		dimension4check()
		guiSetText ( oda1st, "State: "..odasayisi1.."/1" )
		guiSetText ( oda2st, "State: "..odasayisi2.."/2" )
		guiSetText ( oda3st, "State: "..odasayisi3.."/3" )
		guiSetText ( oda4st, "State: "..odasayisi4.."/4" )
	end
end
---------------------------------------------------------
---------------------------------------------------------
openpaneldim = function()
  if guiGetVisible(window) then
    guiSetVisible(window, false)
    showCursor(false)
    durumlariyenile()
	    if odadami == 1 then
	    	guiSetText ( join1b, "Left" )
	    elseif odadami == 0 then
			guiSetText ( join1b, "Join" )
	    end
	    if odadami2 == 1 then
	    	guiSetText ( join2b, "Left" )
	    elseif odadami2 == 0 then
			guiSetText ( join2b, "Join" )
	    end
	    if odadami3 == 1 then
	    	guiSetText ( join3b, "Left" )
	    elseif odadami3 == 0 then
			guiSetText ( join3b, "Join" )
	    end
	    if odadami4 == 1 then
	    	guiSetText ( join4b, "Left" )
	    elseif odadami4 == 0 then
			guiSetText ( join4b, "Join" )
	    end
  else
    guiSetVisible(window, true)
    showCursor(true)
  end
end
bindKey("F3", "down", openpaneldim)
setTimer ( durumlariyenile, 1000, 0, "x" )
---------------------------------------------------------
---------------------------------------------------------
addEventHandler("onClientGUIClick", root,
function ()
	local oyuncuarabasi = getPedOccupiedVehicle ( localPlayer )
	if not oyuncuarabasi then
			if source == join1b then
			dimension1check()
					if odadami == 0 then
						if odasayisi1 == 0 then
								triggerServerEvent("setdimension", localPlayer, 1)
								guiSetText ( join1b, "Left" )
								odadami = 1
								outputChatBox("#00FF00[!] #FFFFFFYou joined dimension number 1!",255,255,255,true)
								guiSetEnabled ( join2b, false )
								guiSetEnabled ( join3b, false )
							    guiSetEnabled ( join4b, false )
								durumlariyenile()
						elseif odasayisi1 == 1 then
							outputChatBox("#FF0000[!] #FFFFFFThis dimension is full!",255,255,255,true)
						end
					elseif odadami == 1 then	
							odadami = 0
							triggerServerEvent("setdimension", localPlayer, 0)
							guiSetText ( join1b, "Join" )
							guiSetEnabled ( join2b, true )
							guiSetEnabled ( join3b, true )
							guiSetEnabled ( join4b, true )
							durumlariyenile()
							outputChatBox("#00FF00[!] #FFFFFFYou left dimension 1!",255,255,255,true)
					end
			elseif source == join2b then
				dimension2check()
						if odadami2 == 0 then
							if odasayisi2 == 0 or odasayisi2 == 1 then
								triggerServerEvent("setdimension", localPlayer, 2)
								guiSetText ( join2b, "Left" )
								odadami2 = 1
								outputChatBox("#00FF00[!] #FFFFFFYou joined dimension number 2!",255,255,255,true)
								guiSetEnabled ( join1b, false )
								guiSetEnabled ( join3b, false )
							    guiSetEnabled ( join4b, false )
								durumlariyenile()
							elseif odasayisi2 == 2 then
								outputChatBox("#FF0000[!] #FFFFFFThis dimension is full!",255,255,255,true)
							end
						elseif odadami2 == 1 then	
							odadami2 = 0
							triggerServerEvent("setdimension", localPlayer, 0)
							guiSetText ( join2b, "Join" )
							guiSetEnabled ( join1b, true )
							guiSetEnabled ( join3b, true )
							guiSetEnabled ( join4b, true )
							durumlariyenile()
							outputChatBox("#00FF00[!] #FFFFFFYou left dimension 2!",255,255,255,true)
						end

			elseif source == join3b then
				dimension3check()
						if odadami3 == 0 then
							if odasayisi3 == 0 or odasayisi3 == 1 or odasayisi3 == 2 then
								triggerServerEvent("setdimension", localPlayer, 3)
								guiSetText ( join3b, "Left" )
								odadami3 = 1
								outputChatBox("#00FF00[!] #FFFFFFYou joined dimension number 3!",255,255,255,true)
								guiSetEnabled ( join1b, false )
								guiSetEnabled ( join2b, false )
							    guiSetEnabled ( join4b, false )
								durumlariyenile()
							elseif odasayisi3 == 3 then
								outputChatBox("#FF0000[!] #FFFFFFThis dimension is full!",255,255,255,true)
							end
						elseif odadami3 == 1 then	
							odadami3 = 0
							triggerServerEvent("setdimension", localPlayer, 0)
							guiSetText ( join3b, "Join" )
							guiSetEnabled ( join1b, true )
							guiSetEnabled ( join2b, true )
							guiSetEnabled ( join4b, true )
							durumlariyenile()
							outputChatBox("#00FF00[!] #FFFFFFYou left dimension 3!",255,255,255,true)
						end

			elseif source == join4b then
				dimension4check()
						if odadami4 == 0 then
							if odasayisi4 == 0 or odasayisi4 == 1 or odasayisi4 == 2 or odasayisi4 == 3 then
								triggerServerEvent("setdimension", localPlayer, 4)
								guiSetText ( join4b, "Left" )
								odadami4 = 1
								outputChatBox("#00FF00[!] #FFFFFFYou joined dimension number 4!",255,255,255,true)
								guiSetEnabled ( join1b, false )
								guiSetEnabled ( join3b, false )
							    guiSetEnabled ( join2b, false )
								durumlariyenile()
							elseif odasayisi4 == 4 then
								outputChatBox("#FF0000[!] #FFFFFFThis dimension is full!",255,255,255,true)
							end
						elseif odadami4 == 1 then	
							odadami4 = 0
							triggerServerEvent("setdimension", localPlayer, 0)
							guiSetText ( join4b, "Join" )
							guiSetEnabled ( join1b, true )
							guiSetEnabled ( join3b, true )
							guiSetEnabled ( join2b, true )
							durumlariyenile()
							outputChatBox("#00FF00[!] #FFFFFFYou left dimension 4!",255,255,255,true)
						end

			end
		else
			outputChatBox("#FF0000[!] #FFFFFFYou cant change the dimension when u drive a car. Please left from car for left the dimension!",255,255,255,true)
		end
end)
---------------------------------------------------------
---------------------------------------------------------
function resetpanelwhendie ( killer, weapon, bodypart )
				guiSetEnabled ( join1b, true )
				guiSetEnabled ( join2b, true )
				guiSetEnabled ( join3b, true )
				guiSetEnabled ( join4b, true )
				guiSetText ( join1b, "Join" )
				guiSetText ( join2b, "Join" )
				guiSetText ( join3b, "Join" )
				guiSetText ( join4b, "Join" )
				durumlariyenile()	
end
addEventHandler ( "onClientPlayerWasted", getLocalPlayer(), resetpanelwhendie )
---------------------------------------------------------

