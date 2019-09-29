local EternalPalace = LibStub("AceAddon-3.0"):GetAddon("BestInSlotRedux"):NewModule("EternalPalace")
local eternalpalace = "eternalpalace"
function EternalPalace:OnEnable()
  local L = LibStub("AceLocale-3.0"):GetLocale("BestInSlotRedux")

  local palacename = C_Map.GetMapInfo(1515).name
    
  self:RegisterExpansion("Battle for Azeroth", EXPANSION_NAME7)
  self:RegisterRaidTier("Battle for Azeroth", 80202, palacename, PLAYER_DIFFICULTY1, PLAYER_DIFFICULTY2, PLAYER_DIFFICULTY6)
  self:RegisterRaidInstance(80202, eternalpalace, palacename, {
    bonusids = {
      [1] = {3524},
      [2] = {3524},
      [3] = {3524}
    },
    difficultyconversion = {
      [1] = 3, --Raid Normal
      [2] = 5, --Raid Heroic
      [3] = 6, --Raid Mythic
    }
  })
  --------------------------------------------------
  ----- The Eternal Palace
  --------------------------------------------------
  

  -----------------------------------
  ----- Abyssal Commander Sivara
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2352)
  local lootTable = {
    168306, 
    168276, 
    168901, 
    168903, 
    168818, 
    168273, 
    168477, 
    168345, 
    168359, 
    168361, 
    168341, 
    168387, 
    168377,
    168386,
    168384,
    168371,
    168390,
    168905,
  }
  self:RegisterBossLoot(eternalpalace, lootTable, bossName)
  
  -----------------------------------
  ----- Blackwater Behemoth
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2347)
  local lootTable = {
    168900, 
    168397, 
    168353, 
    168342, 
    168362, 
    168343, 
    168376, 
    168885, 
    168379, 
    168389, 
    168383, 
    168373, 
    168385,
    169304,
    169312,
  }
  self:RegisterBossLoot(eternalpalace, lootTable, bossName)
  
  -----------------------------------
  ----- Radiance of Azshara
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2353)
  local lootTable = {
    169694,
    168478,
    168475,
    168336,
    168360,
    168348,
    168355,
    168382,
    168372,
    168375,
    168381,
    168374,
    168388,
    168378,
    168380,
    169313,
  }
  self:RegisterBossLoot(eternalpalace, lootTable, bossName)

  -----------------------------------
  ----- Lady Ashvane
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2354)
  local lootTable = {
    168904,
    168347,
    168354,
    168367,
    168335,
    168883,
    168870,
    168876,
    168877,
    168889,
    169305,
    169311,
    169310,
  }
  self:RegisterBossLoot(eternalpalace, lootTable, bossName)
  
  -----------------------------------
  ----- Orgozoa
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2351)
  local lootTable = {
    168274,
    168897,
    168893,
    168899,
    168894,
    168476,
    168365,
    168339,
    168346,
    168604,
    168352,
    168872,
    168875,
    169319,
    169309,
  }
  self:RegisterBossLoot(eternalpalace, lootTable, bossName)

  -----------------------------------
  ----- The Queen's Court
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2359)
  local lootTable = {
    169694,
    168892,
    168898,
    168896,
    168357,
    168338,
    168364,
    168350,
    168881,
    168886,
    168879,
    168890,
    169316,
    169315,
  }
  self:RegisterBossLoot(eternalpalace, lootTable, bossName)

  -----------------------------------
  ----- Za'qul, Harbinger of Ny'alotha
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2349)
  local lootTable = {
    168902,
    168301,
    168349,
    168868,
    169588,
    168391,
    168363,
    168337,
    168884,
    168882,
    169308,
    169307,
    169306,
    169315,
  }
  self:RegisterBossLoot(eternalpalace, lootTable, bossName)

  -----------------------------------
  ----- Queen Azshara
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2361)
  local lootTable = {
    168857,
    169694,
    168944,
    168538,
    168275,
    168887,
    168888,
    168871,
    168869,
    168874,
    168873,
    168880,
    168878,
    168891,
    169314,
  }
  self:RegisterBossLoot(eternalpalace, lootTable, bossName)

  -----------------------------------
  ----- Trash loot
  -----------------------------------
  local bossName = L["Trash Loot"]
  local lootTable = {
    -- ----Cloth----
    169930,
    169929,
    -- ----Leather----
    169932,
    169931,
    -- ----Mail----
    169934,
    169933,
    -- ----Plate----
    169936,
    169935,
    -- ----Cloak----
    168602,
  }
  self:RegisterBossLoot(eternalpalace, lootTable, bossName)
end

function eternalpalace:InitializeZoneDetect(ZoneDetect)
  ZoneDetect:RegisterMapID(1515, eternalpalace)
  ZoneDetect:RegisterNPCID(155144, eternalpalace, 1) -- Abyssal Commander Sivara
  ZoneDetect:RegisterNPCID(154986, eternalpalace, 2) -- Blackwater Behemoth                             
  ZoneDetect:RegisterNPCID(152364, eternalpalace, 3) -- Radiance of Azshara
  ZoneDetect:RegisterNPCID(153142, eternalpalace, 4) -- Lady Ashvane
  ZoneDetect:RegisterNPCID(152128, eternalpalace, 5) -- Orgozoa
  ZoneDetect:RegisterNPCID(152853, eternalpalace, 6) -- The Queen's Court
  ZoneDetect:RegisterNPCID(152852, eternalpalace, 6) -- The Queen's Court
  ZoneDetect:RegisterNPCID(150859, eternalpalace, 7) -- Za'qul, Harbinger of Ny'alotha
  ZoneDetect:RegisterNPCID(155126, eternalpalace, 8) -- Queen Azshara
end
