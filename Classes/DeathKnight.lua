--[[ ---------------------------------------------------------------------------

BuffEnough: personal buff monitor.

BuffEnough is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

BuffEnough is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License
along with BuffEnough.  If not, see <http://www.gnu.org/licenses/>.

----------------------------------------------------------------------------- ]]


if select(2, UnitClass("player")) ~= "DEATHKNIGHT" then return end 

local L = LibStub("AceLocale-3.0"):GetLocale("BuffEnough")
local DeathKnight = BuffEnough:GetOrCreateModule("Player")


--[[ ---------------------------------------------------------------------------
     Check class buffs
----------------------------------------------------------------------------- ]]
function DeathKnight:CheckClassBuffs()

    if BuffEnough.debug then BuffEnough:debug("Checking deathknight buffs") end
    
    if UnitAffectingCombat("player") then
     
		BuffEnough:TrackItem(L["Buffs"], BuffEnough.spells["Horn of Winter"], false, true, false, nil, nil, true)
        
    end

end

--[[ ---------------------------------------------------------------------------
     Formulate priority list for paladin blessings
----------------------------------------------------------------------------- ]]
function DeathKnight:GetPaladinBlessingList()

    return {BuffEnough.spells["Blessing of Kings"], BuffEnough.spells["Blessing of Might"], BuffEnough.spells["Blessing of Sanctuary"]}

end
