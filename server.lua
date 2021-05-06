-- set dimension for player global
function setdimension(value)
	if client then 
		setElementDimension(client,value)
	end
end

addEvent("setdimension", true)
addEventHandler("setdimension", root, setdimension)
