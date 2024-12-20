local waypoint = nil
local lastWaypointStatus = false
local minDistance = 5.0
local GetWaypointCoords = GetWaypointCoords
local IsWaypointActive = IsWaypointActive
local GetEntityCoords = GetEntityCoords
local PlayerPedId = PlayerPedId
local GetScreenCoordFromWorldCoord = GetScreenCoordFromWorldCoord
local floor = math.floor
local vector3 = vector3

RegisterNetEvent("3d_waypoint:setWaypoint", function(coords)
    SetWaypointOff()
    Wait(2000)
    waypoint = vector3(coords.x, coords.y, coords.z)
end)

Citizen.CreateThread(function()
    while true do
        local isWaypointActive = IsWaypointActive()
        
        if isWaypointActive ~= lastWaypointStatus then
            if isWaypointActive then
                local waypointCoords = GetWaypointCoords()
                waypoint = vector3(waypointCoords.x, waypointCoords.y, waypointCoords.z)
            else
                waypoint = nil
                SendNUIMessage({
                    type = "showIndicator",
                    show = false
                })
            end
            lastWaypointStatus = isWaypointActive
        end
        Citizen.Wait(500)
    end
end)

Citizen.CreateThread(function()
    while true do
        if waypoint then
            local playerCoords = GetEntityCoords(PlayerPedId())
            local distance = #(playerCoords - waypoint)
            local uiapp = GetUiappCurrentActivityByHash(`Map`)  
            if distance > minDistance and uiapp == GetHashKey("Map") then
                local isVisible, screenX, screenY = GetScreenCoordFromWorldCoord(waypoint.x, waypoint.y, playerCoords.z + 1)
                if isVisible then
                    SendNUIMessage({
                        type = "update3DIndicator",
                        show = true,
                        x = screenX,
                        y = screenY,
                        distance = floor(distance)
                    })
                else
                    SendNUIMessage({
                        type = "showIndicator",
                        show = false
                    })
                end
                Citizen.Wait(0)
            else
                SendNUIMessage({
                    type = "showIndicator",
                    show = false
                })
                waypoint = nil
                Citizen.Wait(100)
            end
        else
            Citizen.Wait(5000)
        end
    end
end)
