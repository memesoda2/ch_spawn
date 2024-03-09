local spawnPos = vector3(686.245, 577.950, 130.461)
-- The player will respawn here ^^^^
-- Change them if you want

AddEventHandler('onClientGameTypeStart', function()
    exports.spawnmanager:setAutoSpawnCallback(function()
        exports.spawnmanager:spawnPlayer({
            x = spawnPos.x,
            y = spawnPos.y,
            z = spawnPos.z,
            model = 'a_m_m_skater_01'
             -- More peds models https://docs.fivem.net/docs/game-references/ped-models/
        }, function()
            TriggerEvent('chat:addMessage', {
                args = { 'Welcome to the party!~' }
                 -- Change this text ^^^^^^^^^^
                 
            })
        end)
    end)

    exports.spawnmanager:setAutoSpawn(true)
    exports.spawnmanager:forceRespawn()
end)
--Author Bebbesi 
