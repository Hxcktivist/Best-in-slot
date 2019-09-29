 local Palace = LibStub("AceAddon-3.0"):GetAddon("BestInSlotRedux"):NewModule("Palace")
local EP = "EP"
function Palace:OnEnable()
  local L = LibStub("AceLocale-3.0"):GetLocale("BestInSlotRedux")
  
  local palaceName = C_Map.GetMapInfo(1512).name
  self:RegisterExpansion("Battle for Azeroth", EXPANSION_NAME7)
  self:RegisterRaidTier("Battle for Azeroth", 80200, palaceName, PLAYER_DIFFICULTY1, PLAYER_DIFFICULTY2, PLAYER_DIFFICULTY6)
  self:RegisterRaidInstance(80200, EP, palaceName, {
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
  ----- Eternal Palace
  --------------------------------------------------
 
 
  -----------------------------------
  ----- Commander Sivara
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2352)
  local lootTable = {
    168371, --Seawrath Legwraps
    168377, --Tideblood Bracers
    168384, --Wavespine Clutch
    168387, --Palace Sentinel Vambraces
    168390, --Sabatons of the Stalwart
    168386, --Gauntlets of Overflowing Chill
    168341, --Siren Mystic's Vestments
    168345, --Helm of the Inexorable Tide
    168359, --Abyssal Commander's Mantle
    168361, --Naga Centaur's Shellplate
    168273, --Shiver Venom Crossbow
    168901, --Royal Scaleguard's Battleaxe
    168903, --Scepter of the Azsh'ari
    168818, --Sivara's Slitherblade
    168276, --Claw of the Myrmidon
    168306, --Shiver Venom Lance
    168477, --Tidebinder's Driftglobe
    168905, --Shiver Venom Relic
  }
  self:RegisterBossLoot(EP, lootTable, bossName)
 
 
  -----------------------------------
  ----- Blackwater Behemoth
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2347)
  local lootTable = {
    168397, --Fang of the Behemoth
    168343, --Blackwater Shimmerscale Vest
    168885, --Undercove Crushers
    168342, --Fathom-Feeder's Mantle
    169360, --Mindlost Bloodfrenzy
    168379, --Ship Swallower's Belt
    168362, --Trench Tyrant's Shoulderplates
    168383, --Pelagos Predator's Legguards
    169312, --Luminous Jellyweed
    168373, --Eelskin Flippers
    168385, --Slipstreamer's Saltwalkers
    168376, --Anglerfish Feelers
    169304, --Leviathan's Lure
    168900, --Diver's Folly
    168353, --Hood of Lightless Depths
    168389, --Fleetwrecker's Greaves
  }
  self:RegisterBossLoot(EP, lootTable, bossName)
 
 
  -----------------------------------
  ----- Radiance of Azshara
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2353)
  local lootTable = {
    169313, --Phial of the Arcane Tempest
    168360, --Warhelm of Dread Waters
    168378, --Leggings of the Stormborn
    168374, --Belt of Blind Devotion
    169694, --Aqueous Reliquary
    168372, --Sea Sculptor's Cuffs
    168381, --Grips of the Scaled Arcanist
    168380, --Ancient Tempest Striders
    168375, --Gloves of Unshackled Arcana
    168382, --Arcanamental Bindings
    168388, --Storm-Tempered Girdle
    168336, --Handmaiden's Cowl of Sacrifice
    168348, --Shoulderpads of Frothing Rage
    168355, --Servitor's Heartguard
    168478, --Monstrosity's Shipbreaker
    168475, --Bulwark of the Seaborn Avatar
  }
  self:RegisterBossLoot(EP, lootTable, bossName)
 
 
  -----------------------------------
  ----- Lady Ashvane
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2354)
  local lootTable = {
    168347, --Helm of Hideous Transformation
    168883, --Cultured Pearl Armbands
    168876, --Priscilla's Fishnets
    169358, --Lightless Ambusher
    168889, --Boralus Noble's Seal
    169305, --Aquipotent Nautilus
    168335, --Robes of Sunken Nobility
    168367, --Barnacle-Crusted Breastplate
    168904, --Current-Weaver's Gavel
    169310, --Bloodthirsty Urchin
    169311, --Ashvane's Razor Coral
    168877, --Coralshell Warboots
    168870, --Tanglekelp Waistwrap
    168354, --Shoulderguards of Crushing Depths
  }
  self:RegisterBossLoot(EP, lootTable, bossName)
 
 
  -----------------------------------
  ----- Orgozoa
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2351)
  local lootTable = {
    168893, --Hatchery Scraper
    169319, --Dribbling Inkpod
    168897, --Tentacle Crusher
    168875, --Formcrafter's Pants
    168352, --Scalemail of Unnatural Selection
    168894, --Squidhunter Speargun
    168604, --Drape of the Hatcher
    168365, --Greathelm of the Tender
    168899, --Orgozoa's Paralytic Barb
    168339, --Incubator's Bellcap
    168476, --Great Reef Barrier
    169309, --Zoatroid Egg Sac
    168274, --Aqua-Pulse Trident
    168872, --Cephalopod's Sash
    168346, --Tidal Drifter's Shoulders
  }
  self:RegisterBossLoot(EP, lootTable, bossName)
 
 
  -----------------------------------
  ----- The Queen's Court
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2359)
  local lootTable = {
    168896, --Stormtamer's Orb
    168364, --Pauldrons of Fanatical Might
    168881, --Naga Executor's Armguards
    169694, --Aqueous Reliquary
    168890, --Ring of the Highborne Courtier
    169316, --Deferred Sentence
    168357, --Silivaz's Skullguard
    168350, --Tunic of the Sycophant
    168892, --Court Dagger of Sentencing
    168898, --Pashmar's Finial
    168879, --Ardent Worshipper's Boots
    168338, --Amice of the Reef Witch
    168886, --Hands of the Fanatic
    169315, --Edicts of the Faithless
  }
  self:RegisterBossLoot(EP, lootTable, bossName)
 
 
  -----------------------------------
  ----- Za'qul
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2349)
  local lootTable = {
    168902, --Dream's End
    169306, --Za'qul's Portal Key
    168349, --Shroud of Unmooring Whispers
    168882, --Shackles of Dissonance
    169588, --Gardbrace of Fractured Reality
    168391, --Cloak of Ill Tidings
    168301, --Sever, Edge of Madness
    169308, --Chain of Suffering
    168884, --Bindings of the Herald
    168337, --Vestments of Creeping Terror
    168363, --Dark Passenger's Breastplate
    169307, --Vision of Demise
  }
  self:RegisterBossLoot(EP, lootTable, bossName)
 
 
  -----------------------------------
  ----- Queen Azshara
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2361)
  local lootTable = {
    168874, --Cherished Empress's Leggings
    168869, --Eternity Keeper's Greatbelt
    168880, --Slippers of the Sorceress-Queen
    168873, --Tide Goddess's Wargreaves
    169694, --Aqueous Reliquary
    169314, --Azshara's Font of Power
    168871, --Beloved Monarch's Waistwrap
    168878, --Vethan's Icewalkers
    168275, --Anu-Azshara, Staff of the Eternal
    168887, --Gloves of Incomparable Beauty
    168888, --Handguards of the Highest-Born
    168891, --Cursed Lover's Ring
  }
  self:RegisterBossLoot(EP, lootTable, bossName)
 
 
  -----------------------------------
  ----- Trash loot
  -----------------------------------
  local bossName = L["Trash Loot"]
  local lootTable = {
    169933,--Abyssal Bubbler's Bracers
    169932,--Brineweaver Guardian's Gloves
    169935,--Brutish Myrmidon's Vambraces
    168602,--Cloak of Blessed Depths
    169929,--Cuffs of Soothing Currents
    169934,--Deepcrawler's Handguards
    169936,--Gauntlets of Crashing Tides
    169930,--Handwraps of Unhindered Resonance
    169931,--Skulker's Blackwater Bands
  }
  self:RegisterBossLoot(EP, lootTable, bossName)
end
 
function Palace:InitializeZoneDetect(ZoneDetect)
  ZoneDetect:RegisterMapID(1179, EP)
  ZoneDetect:RegisterNPCID(155144, EP, 1) --Commander Sivara
  ZoneDetect:RegisterNPCID(154986, EP, 2) --Blackwater Behemoth
  ZoneDetect:RegisterNPCID(152364, EP, 3) --Radiance of Azshara
  ZoneDetect:RegisterNPCID(153142, EP, 4) --Lady Ashvane
  ZoneDetect:RegisterNPCID(152128, EP, 5) --Orgozoa
  ZoneDetect:RegisterNPCID(152853, EP, 6) --The Queen's Court
  ZoneDetect:RegisterNPCID(150859, EP, 7) --Za'qul
  ZoneDetect:RegisterNPCID(155126, EP, 8) --Queen Azshara
end