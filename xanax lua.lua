client_latency, client_log, client_draw_rectangle, client_draw_circle_outline, client_userid_to_entindex, client_draw_indicator, client_draw_gradient, client_set_event_callback, client_screen_size, client_eye_position = client.latency, client.log, client.draw_rectangle, client.draw_circle_outline, client.userid_to_entindex, client.draw_indicator, client.draw_gradient, client.set_event_callback, client.screen_size, client.eye_position
client_draw_circle, client_color_log, client_delay_call, client_draw_text, client_visible, client_exec, client_trace_line, client_set_cvar = client.draw_circle, client.color_log, client.delay_call, client.draw_text, client.visible, client.exec, client.trace_line, client.set_cvar
client_world_to_screen, client_draw_hitboxes, client_get_cvar, client_draw_line, client_camera_angles, client_draw_debug_text, client_random_int, client_random_float = client.world_to_screen, client.draw_hitboxes, client.get_cvar, client.draw_line, client.camera_angles, client.draw_debug_text, client.random_int, client.random_float
entity_get_local_player, entity_is_enemy, entity_hitbox_position, entity_get_player_name, entity_get_steam64, entity_get_bounding_box, entity_get_all, entity_set_prop = entity.get_local_player, entity.is_enemy, entity.hitbox_position, entity.get_player_name, entity.get_steam64, entity.get_bounding_box, entity.get_all, entity.set_prop
entity_is_alive, entity_get_player_weapon, entity_get_prop, entity_get_players, entity_get_classname = entity.is_alive, entity.get_player_weapon, entity.get_prop, entity.get_players, entity.get_classname
globals_realtime, globals_absoluteframetime, globals_tickcount, globals_curtime, globals_mapname, globals_tickinterval, globals_framecount, globals_frametime, globals_maxplayers = globals.realtime, globals.absoluteframetime, globals.tickcount, globals.curtime, globals.mapname, globals.tickinterval, globals.framecount, globals.frametime, globals.maxplayers
ui_new_slider, ui_new_combobox, ui_reference, ui_set_visible, ui_is_menu_open, ui_new_color_picker, ui_set_callback, ui_set, ui_new_checkbox, ui_new_hotkey, ui_new_button, ui_new_multiselect, ui_get = ui.new_slider, ui.new_combobox, ui.reference, ui.set_visible, ui.is_menu_open, ui.new_color_picker, ui.set_callback, ui.set, ui.new_checkbox, ui.new_hotkey, ui.new_button, ui.new_multiselect, ui.get
math_ceil, math_tan, math_log10, math_randomseed, math_cos, math_sinh, math_random, math_huge, math_pi, math_max, math_atan2, math_ldexp, math_floor, math_sqrt, math_deg, math_atan, math_fmod = math.ceil, math.tan, math.log10, math.randomseed, math.cos, math.sinh, math.random, math.huge, math.pi, math.max, math.atan2, math.ldexp, math.floor, math.sqrt, math.deg, math.atan, math.fmod
math_acos, math_pow, math_abs, math_min, math_sin, math_frexp, math_log, math_tanh, math_exp, math_modf, math_cosh, math_asin, math_rad = math.acos, math.pow, math.abs, math.min, math.sin, math.frexp, math.log, math.tanh, math.exp, math.modf, math.cosh, math.asin, math.rad
table_maxn, table_foreach, table_sort, table_remove, table_foreachi, table_move, table_getn, table_concat, table_insert = table.maxn, table.foreach, table.sort, table.remove, table.foreachi, table.move, table.getn, table.concat, table.insert
string_find, string_format, string_rep, string_gsub, string_len, string_gmatch, string_dump, string_match, string_reverse, string_byte, string_char, string_upper, string_lower, string_sub = string.find, string.format, string.rep, string.gsub, string.len, string.gmatch, string.dump, string.match, string.reverse, string.byte, string.char, string.upper, string.lower, string.sub
bit_band, client_delay_call, client_set_event_callback, entity_get_local_player, entity_get_player_weapon, entity_get_prop, print, func, select, table_insert, table_sort, type, ui_get, ui_name, ui_new_checkbox, ui_new_combobox, ui_new_multiselect, ui_reference, ui_set, ui_set_callback, ui_set_visible, xpcall, pairs = bit.band, client.delay_call, client.set_event_callback, entity.get_local_player, entity.get_player_weapon, entity.get_prop, print, func, select, table.insert, table.sort, type, ui.get, ui.name, ui.new_checkbox, ui.new_combobox, ui.new_multiselect, ui.reference, ui.set, ui.set_callback, ui.set_visible, xpcall, pairs
local abs, sqrt, floor = math.abs, math.sqrt, math.floor

local function inArr(tab, val)
    for index, value in ipairs(tab) do
        if value == val then return true end
    end
    return false
end

peek_real = ui.new_hotkey('LUA', 'B', '-')

ragebot, ragebotkey = ui.reference ("Rage", "Aimbot", "Enabled")
rageautofire = ui.reference("RAGE", "Aimbot", "Automatic fire")
rageautowall = ui.reference("RAGE", "Aimbot", "Automatic penetration")
body_slider = ui.reference("PLAYERS", "Adjustments", "Force body yaw value")
forcebody = ui.reference("PLAYERS", "Adjustments", "Force body yaw")
applyall = ui.reference("PLAYERS", "Adjustments", "Apply to all")
slow_motion, slow_motion_key = ui.reference("AA", "Other", "Slow motion")
gamesense = ui.reference("MISC", "Miscellaneous", "Clan tag spammer")
mindamage = ui.reference("RAGE", "Aimbot", "Minimum damage")
maxfov = ui.reference("RAGE", "Aimbot", "Maximum FOV")
body, body_num = ui.reference("AA", "Anti-aimbot angles", "Body yaw")
ref_yaw, ref_yaw_val = ui.reference("AA", "Anti-aimbot angles", "Yaw")
ref_autodirection, ref_autodirection_key = ui.reference("AA", "Anti-aimbot angles", "Freestanding")
ref_aaenablers = ui.reference("AA", "Anti-aimbot angles", "Enabled")
ref_yaw_base = ui.reference("AA", "Anti-aimbot angles", "Yaw base")
ref_fakeduck = ui.reference("Rage", "Other", "Duck peek assist")
ref_fakeyaw = ui.reference("AA", "Anti-aimbot angles", "Fake yaw limit")
ref_pitch = ui.reference("AA", "Anti-aimbot angles", "Pitch")
ref_yaw_jitter, ref_yaw_jitter_num = ui.reference("AA", "Anti-aimbot angles", "Yaw jitter")
ref_edgeyaw = ui.reference("AA", "Anti-aimbot angles", "Edge yaw")
ref_bodyyaw_freestand = ui.reference("AA", "Anti-aimbot angles", "Freestanding body yaw")
ref_body, ref_body_num = ui.reference("AA", "Anti-aimbot angles", "Body yaw")
ref_freestand = ui.reference("AA", "Anti-aimbot angles", "Freestanding")
ref_fakelag_enable, ref_fakelag_key = ui.reference("AA", "Fake lag", "Enabled")
_, slider = ui.reference("AA", "Anti-aimbot angles", "Body yaw")



local textbox   = ui.new_label("Rage", "Other", "------------------cocaine.lua-------------------")

   --Watermark

watermark = ui.new_checkbox("Misc", "Miscellaneous", "Watermark")
watermarkcolor = ui.new_color_picker("Misc", "Miscellaneous", "Watermark", "163", "255", "0", "255")


local function update_menu(visible)
    if ui.get(watermark, true) then
    ui.set_visible(watermarkcolor, true)
    else
    ui.set_visible(watermarkcolor, false)
    end
end
client.set_event_callback("paint_ui", update_menu)


function on_paint(ctx)
    if ui.get(watermark, true) then
local x, y
local screenWidth, screenHeight = client.screen_size()
local x = screenWidth - 60
local x2 = screenWidth - 30
local r, g, b, a = ui.get(watermarkcolor)
  
--renderer.rectangle(1790, 3, 120, 15, 20, 20, 20, 255)
--renderer.rectangle(1790, 3, 120, 1, r, g, b, a)
renderer.text(40, 11, r, g, b, a, "c", 0, "cocaine beta")

end
        end
client.set_event_callback("paint", on_paint)



-- MAGNET --
magnet = ui.new_checkbox("Rage", "Other", "Triggermagnet")
triggermagnet = ui.new_hotkey("Rage", "Other", "Triggermagnet", true)
local function update_menu(visible)
    if ui.get(magnet, true) then
    ui.set_visible(triggermagnet, true)
    else
    ui.set_visible(triggermagnet, false)
    end
end
client.set_event_callback("paint_ui", update_menu)
function on_paint(ctx)
    if ui.get(magnet) then
        local width, height = client.screen_size()
        if ui.get(triggermagnet) then
            ui.set(rageautofire, true)
            ui.set(ragebotkey, "Always on")
        else
            ui.set(rageautofire, false)
            ui.set(ragebotkey, "On hotkey")
        end
    end
end
client.set_event_callback("paint", on_paint)
-- END OF MAGNET --


--Dynamic
local uix, vector = require 'gamesense/uix', require 'vector'
local enable_ref
local color_ref
local min_fov_ref
local max_fov_ref
local scale_ref
local builtin_fov_ref

local scaled_fov
local BASE_DISTANCE = 1000.0

local function clamp(val, min, max)
    val = math_min(max, val)
    val = math_max(min, val)
    return val
end

local function lerp(min, max, factor)
    factor = clamp(factor, 0.0, 1.0)
    local lerp_result = (1-factor)*min+factor*max
    return clamp(lerp_result, min, max)
end

local function distance_to_ray(pos, ray_start, ray_direction)
    return ray_direction:cross(pos-ray_start):length()
end

local function find_closest_ent(local_origin)
    local players = entity_get_players(true)
    local forward_vector = vector():init_from_angles(client_camera_angles())

    local closest_ent
    local shortest_distance = math.huge

    for i=1, #players do
        local ent = players[i]
        local enemy_origin = vector(entity_get_prop(ent, "m_vecOrigin"))
        local distance = distance_to_ray(enemy_origin, local_origin, forward_vector)
        if distance <= shortest_distance then
            closest_ent = ent
            shortest_distance = distance
        end
    end

    return closest_ent, shortest_distance
end

local function on_setup_command()
    local local_player = entity_get_local_player()
    local local_origin = vector(entity_get_prop(local_player, "m_vecOrigin"))

    local min_fov = ui_get(min_fov_ref)
    local max_fov = ui_get(max_fov_ref)
    local nearest_player = find_closest_ent(local_origin)

    if nearest_player ~= nil then
        local enemy_origin = vector(entity_get_prop(nearest_player, "m_vecOrigin"))
        local distance_to_enemy = local_origin:dist(enemy_origin)

        local max_distance = BASE_DISTANCE*ui_get(scale_ref)*0.01
        scaled_fov = lerp(min_fov, max_fov, (max_distance-distance_to_enemy)/max_distance)
        scaled_fov = math_floor(scaled_fov)
    else
        scaled_fov = min_fov
    end

    ui_set(builtin_fov_ref, scaled_fov)
end

local function on_dynamic_fov_toggle(ref, value)
    ui_set_visible(min_fov_ref, value)
    ui_set_visible(max_fov_ref, value)
    ui_set_visible(scale_ref, value)
end

do
    enable_ref      = uix.new_checkbox("RAGE", "Other", "Dynamic FOV")
    min_fov_ref     = ui_new_slider("RAGE", "Other", "\nMinimum FOV", 1, 180, 5, true, "\u{00B0}")
    max_fov_ref     = ui_new_slider("RAGE", "Other", "\nMaximum FOV", 1, 180, 10, true, "\u{00B0}")
    scale_ref       = ui_new_slider("RAGE", "Other", "Scale Distance", 0, 350, 100, true, "x", 0.01)
    builtin_fov_ref = ui_reference("RAGE", "Aimbot", "Maximum FOV")

    enable_ref:on("change", on_dynamic_fov_toggle)
    enable_ref:on("paint", on_paint)
    enable_ref:on("setup_command", on_setup_command)

    scaled_fov = ui_get(builtin_fov_ref)
end


-- SLOWWALK --
slowwalkcheck = ui.new_checkbox("AA", "Other", "Slow motion limit")
limit_reference = ui.new_slider("AA", "other", "Slow motion limit", 10, 57, 50, 57, "", 1, { [57] = "Auto" })

local function update_menu(visible)
    if ui.get(slowwalkcheck, true) then
    ui.set_visible(limit_reference, true)
    else
    ui.set_visible(limit_reference, false)
    end
end
client.set_event_callback("paint_ui", update_menu)


function modify_velocity(cmd, goalspeed)
    if ui.get(slowwalkcheck, true) then
    else
        return
    end
    if goalspeed <= 0 then
        return
    end

    local minimalspeed = math.sqrt((cmd.forwardmove * cmd.forwardmove) + (cmd.sidemove * cmd.sidemove))

    if minimalspeed <= 0 then
        return
    end

    if cmd.in_duck == 1 then
        goalspeed = goalspeed * 2.94117647 -- wooo cool magic number
    end

    if minimalspeed <= goalspeed then
        return
    end

    local speedfactor = goalspeed / minimalspeed
    cmd.forwardmove = cmd.forwardmove * speedfactor
    cmd.sidemove = cmd.sidemove * speedfactor
end
function on_setup_cmd(cmd)
    if ui.get(slowwalkcheck, true) then
    else
        return
    end
    local checkbox = ui.get(slow_motion)
    local hotkey = ui.get(slow_motion_key)
    local limit = ui.get(limit_reference)

    if limit >= 57 then
        return
    end

    if checkbox and hotkey then
        modify_velocity(cmd, limit)
    end
end
client.set_event_callback('setup_command', on_setup_cmd)
-- END OF SLOWWALK --


-- AUTOWALL --
autowallcheck = ui.new_checkbox("Rage", "Other", "Autowall")
autowallhotkey = ui.new_hotkey("Rage", "Other", "Autowall", true)
local function update_menu(visible)
    if ui.get(autowallcheck, true) then
    ui.set_visible(autowallhotkey, true)
    else
    ui.set_visible(autowallhotkey, false)
    end
end
client.set_event_callback("paint_ui", update_menu)
function on_paint(ctx)
    if ui.get(autowallcheck) then
        local width, height = client.screen_size()
        if ui.get(autowallhotkey) then
            ui.set(rageautowall, true)
        else
            ui.set(rageautowall, false)
        end
    end
end
client.set_event_callback("paint", on_paint)
-- END OF AUTOWALL --




-- FLAGS --
flag_enable = ui.new_checkbox("Rage", "Other", "Flags")
flag_color = ui.new_color_picker("Rage", "Other", "Indicator colour", "163", "255", "0", "255")
local function update_menu(visible)
    if ui.get(flag_enable, true) then
    ui.set_visible(flag_color, true)
    else
    ui.set_visible(flag_color, false)
    end
end
client.set_event_callback("paint_ui", update_menu)



-- OVERRIDE --
overridebutton = ui.new_checkbox ("Rage", "Other", "Resolver")
overridekey = ui.new_hotkey ("Rage", "Other", "Override key: Right/Left/Off")
local bruteforce_ents = { }
local function update_menu(visible)
    if ui.get(overridebutton, true) then
    ui.set_visible(overridekey, true)
    else
    ui.set_visible(overridekey, false)
    end
end
client.set_event_callback("paint_ui", update_menu)

client.set_event_callback("round_start", function()
    ui.set(body_slider, 0)
    ui.set(forcebody, false)
    ui.set(applyall, true)
end)

function reset_target(r)
    if ui.get(overridebutton, true) then
    else
        return
    end
    client.log(r)
    ui.set(selectedplayer, r)
    ui.set(forcebody, false)
    ui.set(body_slider, 0)
    ui.set(applyall, true)
end

function setbodyyaw()
    if ui.get(overridebutton, true) then
    else
        return
    end
    if ui.get(body_slider) == 0 and canManual == true then
        ui.set(forcebody, true)
        ui.set(body_slider, 60)
        ui.set(applyall, true)
        canManual = false
    end
    if ui.get(body_slider) == 60 and canManual == true then
        ui.set(forcebody, true)
        ui.set(body_slider, -60)
        ui.set(applyall, true)
        canManual = false
    end
    if ui.get(body_slider) == -60 and canManual == true then
        ui.set(forcebody, false)
        ui.set(body_slider, 0)
        ui.set(applyall, true)
        canManual = false
    end
end

function on_paint()
    if ui.get(overridebutton, true) then
    else
        return
    end
    if ui.get(overridekey) then
        if canManual == true then
            setbodyyaw()
            canManual = false
        end
    else
        canManual = true
    end
end
client.set_event_callback("paint", on_paint)

client.set_event_callback("run_command", function(c)
    if ui.get(overridebutton, true) and ui.get(flag_enable, true) then
    else
        return
    end
    if  not ui.is_menu_open() then
        bruteforce_ents = { }
        client.update_player_list()
        for _, v in pairs(entity.get_players(true)) do
            if ui.get(body_slider) == -60 or ui.get(body_slider) == 60 then
                table.insert(bruteforce_ents, v)
                entity.set_prop(v, "m_flDetectedByEnemySensorTime")
            else
                entity.set_prop(v, "m_flDetectedByEnemySensorTime", 0)
            end
        end
    end
end)

client.set_event_callback("paint", function()
    if ui.get(overridebutton, true) and ui.get(flag_enable, true) then
    else
        return
    end
    local r, g, b, a = ui.get(flag_color)
    for _, v in pairs(bruteforce_ents) do
        local bounding_box = { entity.get_bounding_box(v) }
        if #bounding_box == 5 and bounding_box[5] ~= 0 then
            local center = bounding_box[1] + (bounding_box[3] - bounding_box[1]) / 2
            if ui.get(body_slider) == 60 then
                renderer.text(center, bounding_box[2] - 18, r, g, b, a * bounding_box[5], "bc", 0, "LEFT")
            elseif ui.get(body_slider) == -60 then
                renderer.text(center, bounding_box[2] - 18, r, g, b, a * bounding_box[5], "bc", 0, "RIGHT")
        end
    end
end
end)


-- END OF OVERRIDE --



-- CLANTAG --
local enabled_reference = ui.new_checkbox("Misc", "Miscellaneous", "Clantag")
local function time_to_ticks(time)
    return math.floor(time / globals.tickinterval() + .5)
end

local function gamesense_anim(text, indices)
    local text_anim = "               " .. text .. "                      " 
    local tickinterval = globals.tickinterval()
    local tickcount = globals.tickcount() + time_to_ticks(client.latency())
    local i = tickcount / time_to_ticks(0.19)
    i = math.floor(i % #indices)
    i = indices[i+1]+1
    return string.sub(text_anim, i, i+15)
end

local function run_tag_animation()
    if ui.get(enabled_reference) then
        local clan_tag = gamesense_anim("cocaine.lua", {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 11, 11, 11, 11, 11, 11, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22})
        if clan_tag ~= clan_tag_prev then
            client.set_clan_tag(clan_tag)
        end
        clan_tag_prev = clan_tag
    end
end

client.set_event_callback("run_command", function(c)
    chokedcmds = c.chokedcommands 
end)

local was_enabled = false
local function on_run_command(c)
    if ui.get(enabled_reference) then
        if (chokedcmds == 0) or not (entity.is_alive(entity.get_local_player())) then
            run_tag_animation()
            was_enabled = true
        end
    elseif (not ui.get(enabled_reference) and not ui.get(gamesense)) and was_enabled then
        client.set_clan_tag("\0")
        was_enabled = false
    end
end
client.set_event_callback("paint", on_run_command)  
-- END OF CLANTAG --


--DAMAGE INDICATOR
client.set_event_callback("paint", function()
    if not inArr(ui.get(indicatorselect), "Penetration") then return end

    if entity.get_local_player() == nil then
        return
    end

    local weap_classname = entity.get_classname(entity.get_player_weapon(entity.get_local_player()))

    if weap_classname == "CKnife" or weap_classname == "CSmokeGrenade" or weap_classname == "CFlashbang" or weap_classname == "CHEGrenade" or weap_classname == "CDecoyGrenade" or weap_classname == "CIncendiaryGrenade" then
        return
    end

    local screenX, screenY = client.screen_size()
    local xPos = screenX / 2 + 1
    local yPos = screenY / 2 + 20 - 5

    
    local eyeX, eyeY, eyeZ = client.eye_position()
    local pitch, yaw = client.camera_angles()
    local ent_exists = false
    local wall_dmg = 0

    local r, g, b, a = ui.get(indicatorscolor)
    local sin_pitch = math.sin(math.rad(pitch))
    local cos_pitch = math.cos(math.rad(pitch))
    local sin_yaw = math.sin(math.rad(yaw))
    local cos_yaw = math.cos(math.rad(yaw))

    local dirVector = { cos_pitch * cos_yaw, cos_pitch * sin_yaw, -sin_pitch }
    

    local fraction, entindex = client.trace_line(entity.get_local_player(), eyeX, eyeY, eyeZ, eyeX + (dirVector[1] * 8192), eyeY + (dirVector[2] * 8192), eyeZ + (dirVector[3] * 8192))

    if fraction < 1 then
        local entindex_1, dmg = client.trace_bullet(entity.get_local_player(), eyeX, eyeY, eyeZ, eyeX + (dirVector[1] * (8192 * fraction + 128)), eyeY + (dirVector[2] * (8192 * fraction + 128)), eyeZ + (dirVector[3] * (8192 * fraction + 128)))

        if entindex_1 ~= nil then
            ent_exists = true
        end

        if wall_dmg < dmg then
            wall_dmg = dmg
        end
    end

    if wall_dmg > 0 then
        if ent_exists then
            renderer.text(xPos, yPos, r, g, b, a, "cb", 0, wall_dmg)
        else
            renderer.text(xPos, yPos, r, g, b, a, "cb", 0, wall_dmg)
        end
    end
end)





-- INDICATORS --
indicator = ui.new_checkbox("Rage", "Other", "Indicators")
indicatorselect = ui.new_multiselect("Rage", "Other", "Indicators", "Autofire", "Autowall","Resolver override","Damage","FOV","Freestanding","Penetration")
indicatorscolor = ui_new_color_picker('RAGE', 'Other', '\nIndicators', 163, 255, 0, 255)

local function update_menu(visible)
    if ui.get(indicator, true) then
    ui.set_visible(indicatorscolor, true)
    ui.set_visible(indicatorselect, true)
    else
    ui.set_visible(indicatorscolor, false)
    ui.set_visible(indicatorselect, false)
    end
end
client.set_event_callback("paint_ui", update_menu)


local HP




local function on_paint(c)

    local indiselect = ui.get(indicatorselect)
    local picu = ui.get(indicator)
    local r, g, b, a = ui.get(indicatorscolor)

      --fov
    if inArr(ui.get(indicatorselect), "FOV")  then
        renderer.indicator(r, g, b, a, "FOV: ", ui.get(maxfov), "°")
        end  

    --autowall
    if inArr(ui.get(indicatorselect), "Autowall")  then
        if ui.get(autowallhotkey, true) then
        renderer.indicator(r, g, b, a, "AW")
        end
    end

   --min damage
    if inArr(ui.get(indicatorselect), "Damage") and ui.get(mindamage) ~= 0 then 
        renderer.indicator(r, g, b, a, "DMG: "..((ui.get(mindamage) > 100) and ("HP+"..(ui.get(mindamage)-100)) or ui.get(mindamage)))
    elseif ui.get(mindamage) == 0 then
    	renderer.indicator(r, g, b, a, "DMG: Auto")
        end


        --magnet
        if inArr(ui.get(indicatorselect), "Autofire")  then
            if ui.get(triggermagnet, true) then
            	renderer.indicator(r, g, b, a, "TM")
            end
        end

    if inArr(ui.get(indicatorselect), "Resolver override")  then
        if ui.get(overridebutton, true) and ui.get(body_slider) == 60 then
            renderer.indicator(r, g, b, a, "R:LEFT")
        elseif ui.get(overridebutton, true) and ui.get(body_slider) == -60 then
            renderer.indicator(r, g, b, a, "R:RIGHT")
        elseif ui.get(overridebutton, true) and ui.get(body_slider) == 0 then
            renderer.indicator(255, 0, 0, 255, "R:OFF")
        end
    end


    if inArr(ui.get(indicatorselect), "Freestanding")  then
        if ui.get(indicator, true) and ui.get(body_num) == -180 then
            renderer.indicator(163, 255, 0, 255, "F-AA [L]")
        elseif ui.get(indicator, true) and ui.get(body_num) == 180 then
            renderer.indicator(255, 0, 0, 255, "F-AA [R]")
        end
    end
end




client.set_event_callback("paint", on_paint)


--ANTIBRUTE
local check = ui.new_checkbox("AA", "Fake lag", "Anti-bruteforce")
local combo = ui.new_combobox("AA", "Fake lag", "Anti-bruteforce mode", { "opposite", "random", "cocaine brute" })
local ab_range = ui.new_slider("AA", "Fake lag", "Anti-bruteforce range", 1, 100, 32)

local function update_menu(visible)
    if ui.get(check, true) then
    ui.set_visible(combo, true)
    ui.set_visible(ab_range, true)
    else
    ui.set_visible(combo, false)
    ui.set_visible(ab_range, false)
    end
end
client.set_event_callback("paint_ui", update_menu)

local function GetClosestPoint(A, B, P)
    local a_to_p = { P[1] - A[1], P[2] - A[2] }
    local a_to_b = { B[1] - A[1], B[2] - A[2] }

    local atb2 = a_to_b[1]^2 + a_to_b[2]^2

    local atp_dot_atb = a_to_p[1]*a_to_b[1] + a_to_p[2]*a_to_b[2]
    local t = atp_dot_atb / atb2
    
    return { A[1] + a_to_b[1]*t, A[2] + a_to_b[2]*t }
end

local should_swap = false
local it = 0
local angles = { 60, 20, -60 }
client.set_event_callback("bullet_impact", function(c)
    if ui.get(check) and entity.is_alive(entity.get_local_player()) then
        local ent = client.userid_to_entindex(c.userid)
        if not entity.is_dormant(ent) and entity.is_enemy(ent) then
            local ent_shoot = { entity.get_prop(ent, "m_vecOrigin") }
            ent_shoot[3] = ent_shoot[3] + entity.get_prop(ent, "m_vecViewOffset[2]")
            local player_head = { entity.hitbox_position(entity.get_local_player(), 0) }
            local closest = GetClosestPoint(ent_shoot, { c.x, c.y, c.z }, player_head)
            local delta = { player_head[1]-closest[1], player_head[2]-closest[2] }
            local delta_2d = math.sqrt(delta[1]^2+delta[2]^2)
        
            if math.abs(delta_2d) < ui.get(ab_range) then
                it = it + 1
                should_swap = true
            end
        end
    end
end)

client.set_event_callback("run_command", function(c)
    if ui.get(check) and should_swap then
        local _combo = ui.get(combo)
        if _combo == "opposite" then
            ui.set(slider, -ui.get(slider))
        elseif _combo == "random" then
            ui.set(slider, math.random(-60, 60))
        elseif _combo == "cocaine brute" then
            ui.set(slider, angles[(it%3)+1])
        end
        should_swap = false
    end
end)




--LEGIT AA
legitAA = ui_new_checkbox("AA", "Anti-aimbot angles", "Legit anti-aim")
legitAAbase = ui_new_combobox("AA", "Anti-aimbot angles", "\n aa_legit_base", "Manual", "Dynamic")
LegitAAHotkey = ui_new_hotkey("AA", "Anti-aimbot angles", "Anti-aim switch key", true)
LegitAABreaker = ui_new_combobox("AA", "Anti-aimbot angles", "Anti-aim mode", "Smart", "Maximum","Gently Jitter","Hard Jitter")
ui_indicator_combobox4 = ui.new_combobox("AA", "Anti-aimbot angles", "Anti-aim indicator", "Off", "‹ ›", "- -", "Dashes")
ui_indicator_color_picker4 = ui.new_color_picker("AA", "Anti-aimbot angles", "Indicator colour", "0", "115", "255", "255")

local function update_menu(visible)
    if ui.get(legitAA, true) then
    ui.set_visible(ref_aaenablers, false)
    ui.set_visible(ref_pitch, false)
    ui.set_visible(ref_yaw_base, false)
    ui.set_visible(ref_yaw, false)
    ui.set_visible(ref_yaw_jitter, false)
    ui.set_visible(ref_body, false)
    ui.set_visible(ref_body_num, false)
    ui.set_visible(ref_yaw_val, false)
    ui.set_visible(ref_bodyyaw_freestand, false)
    ui.set_visible(ref_fakeyaw, false)
    ui.set_visible(ref_edgeyaw, false)
    ui.set_visible(ref_freestand, false)
    else
    ui.set_visible(ref_aaenablers, true)
    ui.set_visible(ref_pitch, true)
    ui.set_visible(ref_yaw_base, true)
    ui.set_visible(ref_yaw, true)
    ui.set_visible(ref_yaw_jitter, true)
    ui.set_visible(ref_body, true)
    ui.set_visible(ref_body_num, true)
    ui.set_visible(ref_yaw_val, true)
    ui.set_visible(ref_bodyyaw_freestand, true)
    ui.set_visible(ref_fakeyaw, true)
    ui.set_visible(ref_edgeyaw, true)
    ui.set_visible(ref_freestand, true)
    end
end
client.set_event_callback("paint_ui", update_menu)

local world_to_screen = function(x, y, z, func)
    local x, y = renderer.world_to_screen(x, y, z)
    if x ~= nil and y ~= nil then
        func(x, y)
    end
end

local leftdamage = 0
local rightdamage = 0
local rad2deg = function(rad)
    return (rad * 180 / math.pi)
end
local deg2rad = function(deg)
    return (deg * math.pi / 180)
end
local trace_line = function(entity, start, _end)
    return client.trace_line(entity, start.x, start.y, start.z, _end.x, _end.y, _end.z)
end

local screenx, screeny = client.screen_size()

local vector = function(x, y, z)
    x = x ~= nil and x or 0
    y = y ~= nil and y or 0
    z = z ~= nil and z or 0

    return {
        ["x"] = x,
        ["y"] = y,
        ["z"] = z
    }
end

local vector_add = function(vector1, vector2)
    return {
        ["x"] = vector1.x + vector2.x,
        ["y"] = vector1.y + vector2.y,
        ["z"] = vector1.z + vector2.z
    }
end

local vector_substract = function(vector1, vector2)
    return {
        ["x"] = vector1.x - vector2.x,
        ["y"] = vector1.y - vector2.y,
        ["z"] = vector1.z - vector2.z
    }
end

function slot136(slot0, slot1)
    for slot5 = 1, #slot0, 1 do
        if slot0[slot5] == slot1 then
            return true
        end
    end
    return false
end

function slot137(slot0, slot1)
    for slot5, slot6 in ipairs(slot0) do
        if slot6 == slot1 then
            return true, slot5
        end
    end
    return false
end

function slot138()
    if ui.get(otherref.tp_alive) and ui.get(otherref.tp_alive_key) then
        ui.set_visible(otherref.tp_dead, true)
    else
        ui.set_visible(otherref.tp_dead, false)
    end
end

local clamp_angles = function(angle)
    angle = angle % 360
    angle = (angle + 360) % 360
    if angle > 180 then
        angle = angle - 360
    end
    return angle
end


function LAASetup()
    if ui.get(legitAA) then
        if ui.get(legitAAbase) == "Manual" then
            ui.set_visible(LegitAAHotkey, true)
        elseif ui.get(legitAAbase) == "Dynamic" then
            ui.set_visible(LegitAAHotkey, false)
        end
    else
        ui.set_visible(LegitAAHotkey, false)
    end
end

function LAAFunc()
    ----------------------------------------------------------------------LEGITAA
    local legita = ui.get(legitAA)
    local base = ui.get(legitAAbase)
    local aamodes = ui.get(LegitAABreaker)

    ui.set_visible(legitAAbase, legita)
    ui.set_visible(LegitAABreaker, legita)

    ui.set_visible(ui_indicator_combobox4, legita)
    ui.set_visible(ui_indicator_color_picker4, legita)
    ui.set_visible(LegitAAHotkey, legita and base == "Manual")

    if not ui.get(legitAA) then
        LAASetup()
        ui.set(ref_yaw, "Off")
        ui.set(body, "Off")
        ui.set(ref_autodirection, "-")
        ui.set(ref_autodirection_key, "On hotkey")
        ui.set(ref_aaenablers, false)
    elseif ui.get(legitAA) then
        LAASetup()
        ui.set(ref_yaw, "180")
        ui.set(ref_yaw_val, 180)
        ui.set(body, "Static")
        ui.set(ref_autodirection, "-")
        ui.set(ref_autodirection_key, "On hotkey")
        ui.set(ref_aaenablers, true)
    end
end


LAAFunc()
ui.set_callback(legitAA, LAAFunc)
ui.set_callback(legitAAbase, LAAFunc)
ui.set_callback(LegitAAHotkey, LAAFunc)
ui.set_callback(LegitAABreaker, LAAFunc)


local get_atan = function(ent, eye_pos, camera)
    local data = { id = nil, dst = 2147483647, fov = 360 }
    local screenx, screeny = client_screen_size()
    local crosshair = screenx / 2, screeny / 2
    for i = 0, 19 do
        local hitbox = vector(entity.hitbox_position(ent, i))
        local ext = vector_substract(hitbox, eye_pos)

        local yaw = rad2deg(math.atan2(ext.y, ext.x))
        local pitch = -rad2deg(math.atan2(ext.z, math.sqrt(ext.x ^ 2 + ext.y ^ 2)))

        local yaw_dif = math.abs(camera.y % 360 - yaw % 360) % 360
        local pitch_dif = math.abs(camera.x - pitch) % 360

        if yaw_dif > 180 then
            yaw_dif = 360 - yaw_dif
        end

        local dst = math.sqrt(yaw_dif ^ 2 + pitch_dif ^ 2)
        local dstcorrect = math.sqrt(ext.x ^ 2 + ext.y ^ 2 + ext.z ^ 2)
        if dstcorrect < data.dst then
            data.dst = dstcorrect
            data.id = i
            data.fov = yaw - crosshair
        end
    end

    return data.id, data.dst, data.fov
end

local function getdistance()
    local get_players = entity.get_players(true)

    if #get_players == 0 then
        return
    end
    local eye_pos = vector(client.eye_position())
    local camera = vector(client.camera_angles())
    camera.z = z_pos ~= nil and 64 or camera.z
    local distance = math.huge
    local closest_enemy = nil
    local adv_fov = 1000
    local screenx, screeny = client_screen_size()
    local crosshair = screenx / 2, screeny / 2
    for i = 1, #get_players do
        local hitbox_id, dist, fov = get_atan(get_players[i], eye_pos, camera)
        if distance > dist then
            distance = dist
            hitbox = hitbox_id
            closest_enemy = get_players[i]
            adv_fov = fov
        end
    end

    return closest_enemy, hitbox, distance, adv_fov
end

function slot158()
    if ui.get(ref_yaw) == "Off" then
        return
    end

    if entity_get_prop(entity.get_game_rules(), "m_bFreezePeriod") == 1 then
        return
    end

    local screenx, screeny = client_screen_size()
    local lx, ly, lz = entity_get_prop(entity_get_local_player(), "m_angEyeAngles")
    local divisor = screenx / 2
    local divisor2 = screeny / 2
    local size = 15 * cvar.cl_crosshairsize:get_float() * 0.67
    end

    function slot159()
    ui.set(ref_pitch, "Off")
    ui.set(ref_yaw_base, "Local view")
    ui.set(ref_yaw, "180")
    ui.set(ref_yaw_jitter, "Off")
    ui.set(ref_edgeyaw, false)
    ui.set(ref_bodyyaw_freestand, false)
    ui.set(ref_autodirection_key, "On hotkey")
end

local edge_count = { [1] = 7, [2] = 12, [3] = 15, [4] = 19, [5] = 23, [6] = 28, [7] = 35, [8] = 39 }

local function GetClosestPoint(A, B, P)
    local a_to_p = { P[1] - A[1], P[2] - A[2] }
    local a_to_b = { B[1] - A[1], B[2] - A[2] }

    local atb2 = a_to_b[1]^2 + a_to_b[2]^2

    local atp_dot_atb = a_to_p[1]*a_to_b[1] + a_to_p[2]*a_to_b[2]
    local t = atp_dot_atb / atb2
    
    return { A[1] + a_to_b[1]*t, A[2] + a_to_b[2]*t }
end

client.set_event_callback("run_command", function(c)

    if ui.get(legitAA, true) and ui.get(legitAAbase) == "Manual" then
    else
        return
    end

    if should_swap then
        ui.set(ref_body_num, -ui.get(ref_body_num))
        should_swap = false
    end
end)

local canchange = false

function setbyaw()
    if ui.get(legitAA, true) and ui.get(legitAAbase) == "Manual" then
    ui.set(LegitAAHotkey, "On hotkey")
    else
        return
    end
    
    if ui.get(ref_body_num) == 180 and canchange == true then
        ui.set(LegitAAHotkey, "On hotkey")
        ui.set(ref_body_num, -180)
        canchange = false
    end

    if ui.get(ref_body_num) == -180 and canchange == true then
        ui.set(LegitAAHotkey, "On hotkey")
        ui.set(ref_body_num, 180)
        canchange = false
    end
end

function change_paint()
    if ui.get(legitAA, true) and ui.get(legitAAbase) == "Manual" then
    else
        return
    end

    if ui.get(LegitAAHotkey) then
        if canchange == true then
            setbyaw()
            canchange = false
        end
    else
        canchange = true
    end
end

client.set_event_callback("paint", change_paint)


function set_paint()

    if ui.get(ref_body_num) == -180 == false and ui.get(ref_body_num) == 180 == false then
        ui.set(ref_body_num, 180)
    else
    end
end
client.set_event_callback("paint", set_paint)

local function do_legit_aa()
    local local_player = entity_get_local_player()

    if not local_player or not entity.is_alive(local_player) then
        return
    end

    local m_vecOrigin = vector(entity_get_prop(local_player, "m_vecOrigin"))
    local m_vecViewOffset = vector(entity_get_prop(local_player, "m_vecViewOffset"))

    local m_vecOrigin = vector_add(m_vecOrigin, m_vecViewOffset)

    local radius = 20 + 110 + 0.1
    local step = math.pi * 2.0 / edge_count[8]

    local camera = vector(client.camera_angles())
    local central = deg2rad(math.floor(camera.y + 0.5))

    local data = {
        fraction = 1,
        surpassed = false,
        angle = vector(0, 0, 0),
        var = 0,
        side = "LAST KNOWN"
    }

    for a = central, math.pi * 3.0, step do
        if a == central then
            central = clamp_angles(rad2deg(a))
            local trace_line = function(entity, start, _end)
                return client.trace_line(entity, start.x, start.y, start.z, _end.x, _end.y, _end.z)
            end
        end

        local clm = clamp_angles(central - rad2deg(a))
        local abs = math.abs(clm)

        if abs < 90 and abs > 1 then

            local side = "LAST KNOWN"
            local location = vector(
                    radius * math.cos(a) + m_vecOrigin.x,
                    radius * math.sin(a) + m_vecOrigin.y,
                    m_vecOrigin.z
            )

            local _fr, entindex = client.trace_line(local_player, m_vecOrigin.x, m_vecOrigin.y, m_vecOrigin.z, location.x, location.y, location.z)

            if math.floor(clm + 0.5) < -21 then
                side = "LEFT"
            end
            if math.floor(clm + 0.5) > 21 then
                side = "RIGHT"
            end

            local fr_info = {
                fraction = _fr,
                surpassed = (_fr < 1),
                angle = vector(0, clamp_angles(rad2deg(a)), 0),
                var = math.floor(clm + 0.5),
                side = side --[ 0 - center / 1 - left / 2 - right ]
            }

            if data.fraction > _fr then
                data = fr_info
            end
        end
    end

    return data
end



function dodynamic()
    local local_player = entity_get_local_player()

    if not local_player or not entity.is_alive(local_player) then
        return
    end

    local local_player = entity_get_local_player()
    local topX, topY, botX, botY, alpha = entity.get_bounding_box(client_draw_text, local_player)
    local origin = vector(entity_get_prop(local_player, "m_vecOrigin"))
    local collision = (entity_get_prop(local_player, "m_Collision"))
    local vecmin = vector(entity_get_prop(local_player, "m_vecMins"))
    local vecmax = vector(entity_get_prop(local_player, "m_vecMaxs"))
    local min = vector_add(vecmin, origin)
    local max = vector_add(vecmax, origin)

    if not ui.get(legitAA) or ui.get(ref_fakeduck) or ui.get(legitAAbase) == "Manual" then
        return
    end

    if ui.get(legitAA) and ui.get(legitAAbase) == "Dynamic" then

        if entity_get_prop(entity.get_game_rules(), "m_bFreezePeriod") == 1 then
            return
        end
        local data = do_legit_aa()

        if data == nil then
            return
        end
        if data.fraction < 1 then
            slot159()
            ui.set(ref_body_num, data.var > 0 and 180 or -180)
            ui.set(ref_yaw_val, -180)
        end
        if data.fraction < 1 and ui.get(peek_real) then
            slot159()
            ui.set(ref_body_num, data.var > 0 and -180 or 180)
            ui.set(ref_yaw_val, -180)
        end
    end
end

local function fyls()
    if ui.get(legitAA) == false then
        return
    else
        if ui.get(LegitAABreaker) == "Maximum" then
            ui.set(ref_fakeyaw, 60)
            ui.set(ref_body, "Static")
        else if ui.get(LegitAABreaker) == "Smart" then
            ui.set(ref_fakeyaw, 45)
            ui.set(ref_body, "Opposite")
        else if ui.get(LegitAABreaker) == "Gently Jitter" then
        ui.set(ref_fakeyaw, client.random_int(50,60)) 
        ui.set(ref_body, "Static")
        else if ui.get(LegitAABreaker) == "Hard Jitter" then
        ui.set(ref_fakeyaw, client.random_int(20,55)) 
        ui.set(ref_body, "Static")
              end
           end
        end
    end
end
end

client.set_event_callback("paint", fyls)
client.set_event_callback("run_command", function()
    slot158()
end)
client.set_event_callback("paint", function(c)
    dodynamic()
end)

scrsize_x, scrsize_y = client.screen_size()
center_x, center_y = scrsize_x / 2, scrsize_y / 2

function on_paint(c)
    local indicator = ui.get(ui_indicator_combobox4)
    local indicator_r, indicator_g, indicator_b, indicator_a = ui.get(ui_indicator_color_picker4)

    if ui.get(ref_body_num) == 90 and indicator == "‹ ›" and ui.get(legitAA) == true or ui.get(ref_body_num) == 180 and indicator == "‹ ›" and ui.get(legitAA) == true then
        client.draw_text(c, center_x + 50, center_y, indicator_r, indicator_g, indicator_b, indicator_a, "c+", 0, "›")
    elseif ui.get(ref_body_num) == -90 and indicator == "‹ ›" and ui.get(legitAA) == true or ui.get(ref_body_num) == -180 and indicator == "‹ ›" and ui.get(legitAA) == true then
        client.draw_text(c, center_x - 50, center_y, indicator_r, indicator_g, indicator_b, indicator_a, "c+", 0, "‹")
    end

    if ui.get(ref_body_num) == 90 and indicator == "- -" and ui.get(legitAA) == true or ui.get(ref_body_num) == 180 and indicator == "- -" and ui.get(legitAA) == true then
    client.draw_text(c, center_x + 50, center_y, indicator_r, indicator_g, indicator_b, indicator_a, "c+", 0, "-")
    elseif ui.get(ref_body_num) == -90 and indicator == "- -" and ui.get(legitAA) == true or ui.get(ref_body_num) == -180 and indicator == "- -" and ui.get(legitAA) == true then
    client.draw_text(c, center_x - 50, center_y, indicator_r, indicator_g, indicator_b, indicator_a, "c+", 0, "-")
    end
end

err = client.set_event_callback('paint', on_paint)
