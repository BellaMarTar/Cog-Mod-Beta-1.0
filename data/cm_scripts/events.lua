--[[
////////////////////
SURRENDER REMOVES INCOMING PROJECTILES
////////////////////
]]--

function mods.multiverse.destroy_all_projectiles()
    local projectiles = Hyperspace.App.world.space.projectiles
    for i = 0, projectiles:size() - 1 do
        local projectile = projectiles[i]
        local projName = tostring(projectile.extend.name)
        if not (projName == "" or projName == "nil" or projName == "PDS_SHOT") then
            projectile:Kill()
        end
    end
end

script.on_game_event("FOURTH_WALL_BREAK_SPARE_2", false, mods.multiverse.destroy_all_projectiles)


--[[
////////////////////
SHORT ERROR FROM CONTROLLER
////////////////////
]]--

script.on_game_event("SHES_MAD", false, function()
    Hyperspace.ErrorMessage("Humorous attempt Kid, but this is my world.")
    Hyperspace.setWindowTitle("Under My Control")
end)