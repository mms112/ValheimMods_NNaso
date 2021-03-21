**Gives more purpose to paths beyond cosmetics.**
![demogif](https://i.imgur.com/yNv1TS9.gif)
Paths and constructions (floors, etc) apply a modifier to player jog and sprint speed while traveling on them.  
Sprinting also has it's stamina consumption reduced while on paths or floors.  
  
Works on most constructions, want a path made of Kilns? enjoy your speed bonus.  
****Works with carts.**  
  
Supports speed/stamina modifiers on uncleared ground tuned per biome! Make swamps even more painful to traverse!  
By default no modifiers are applied to uncleared terrain.  
  
Displays a status indicator when boosts are being applied. Currently has 2 buff and 2 debuff icons. The thresholds for each icon can be tuned in the config.

**Default config does not add any debuffs.**

![speedy icons](https://i.imgur.com/1DN5URT.png)

## Configuration and Installation
Speed and stamina modifier for each surface are fully tune-able in ***/BepInEx/config/nex.speedypaths.cfg***  
  
Install to **/BepInEx/plugins** folder.

## Config

    [Hud]
    
    ## Show surface type text as status effect name
    # Setting type: Boolean
    # Default value: true
    EnableDynamicStatusText = true
    
    ## Show the speedypaths status icon in the hud
    # Setting type: Boolean
    # Default value: true
    ShowStatusIcon = true
    
    ## Text shown above the status icon
    # Setting type: String
    # Default value: Speedy Path
    StatusText = Speedy Path
    
    ## Speed buff threshold to show lvl 1 buff icon
    # Setting type: Single
    # Default value: 1
    BuffIcon +1 = 1
    
    ## Speed buff threshold to show lvl 2 buff icon
    # Setting type: Single
    # Default value: 1.39
    BuffIcon +2 = 1.39
    
    ## Speed buff threshold to show lvl 1 debuff icon
    # Setting type: Single
    # Default value: 1
    DebuffIcon -1 = 1
    
    ## Speed buff threshold to show lvl 2 debuff icon
    # Setting type: Single
    # Default value: 0.79
    DebuffIcon -2 = 0.79
    
    [SpeedModifiers]
    
    ## Modifier for speed while on dirt paths
    # Setting type: Single
    # Default value: 1.15
    DirtPathSpeed = 1.15
    
    ## Modifier for speed while on stone paths
    # Setting type: Single
    # Default value: 1.4
    StonePathSpeed = 1.4
    
    ## Modifier for speed while on Cultivated land
    # Setting type: Single
    # Default value: 1
    CultivatedSpeed = 1
    
    ## Modifier for speed while on wood structures
    # Setting type: Single
    # Default value: 1.15
    StructureWoodSpeed = 1.15
    
    ## Modifier for speed while on core wood structures
    # Setting type: Single
    # Default value: 1.15
    StructureHardWoodSpeed = 1.15
    
    ## Modifier for speed while on stone structures
    # Setting type: Single
    # Default value: 1.4
    StructureStoneSpeed = 1.4
    
    ## Modifier for speed while on ironwood structures
    # Setting type: Single
    # Default value: 1.4
    StructureIronSpeed = 1.4
    
    [SpeedModifiers_Biomes]
    
    ## Speed modifier for uncleared ground in None Biomes
    # Setting type: Single
    # Default value: 1
    Untamed_None_Speed = 1
    
    ## Speed modifier for uncleared ground in Meadows Biomes
    # Setting type: Single
    # Default value: 1
    Untamed_Meadows_Speed = 1
    
    ## Speed modifier for uncleared ground in Swamp Biomes
    # Setting type: Single
    # Default value: 1
    Untamed_Swamp_Speed = 1
    
    ## Speed modifier for uncleared ground in Mountain Biomes
    # Setting type: Single
    # Default value: 1
    Untamed_Mountain_Speed = 1
    
    ## Speed modifier for uncleared ground in BlackForest Biomes
    # Setting type: Single
    # Default value: 1
    Untamed_BlackForest_Speed = 1
    
    ## Speed modifier for uncleared ground in Plains Biomes
    # Setting type: Single
    # Default value: 1
    Untamed_Plains_Speed = 1
    
    ## Speed modifier for uncleared ground in AshLands Biomes
    # Setting type: Single
    # Default value: 1
    Untamed_AshLands_Speed = 1
    
    ## Speed modifier for uncleared ground in DeepNorth Biomes
    # Setting type: Single
    # Default value: 1
    Untamed_DeepNorth_Speed = 1
    
    ## Speed modifier for uncleared ground in Ocean Biomes
    # Setting type: Single
    # Default value: 1
    Untamed_Ocean_Speed = 1
    
    ## Speed modifier for uncleared ground in Mistlands Biomes
    # Setting type: Single
    # Default value: 1
    Untamed_Mistlands_Speed = 1
    
    [StaminaModifiers]
    
    ## Modifier for stamina while on dirt paths
    # Setting type: Single
    # Default value: 0.8
    DirtPathStamina = 0.8
    
    ## Modifier for stamina while on stone paths
    # Setting type: Single
    # Default value: 0.7
    StonePathStamina = 0.7
    
    ## Modifier for stamina while on Cultivated land
    # Setting type: Single
    # Default value: 1
    CultivatedStamina = 1
    
    ## Modifier for stamina while on wood structures
    # Setting type: Single
    # Default value: 0.8
    StructureWoodStamina = 0.8
    
    ## Modifier for stamina while on core wood structures
    # Setting type: Single
    # Default value: 0.8
    StructureHardWoodStamina = 0.8
    
    ## Modifier for stamina while on stone structures
    # Setting type: Single
    # Default value: 0.7
    StructureStoneStamina = 0.7
    
    ## Modifier for stamina while on ironwood structures
    # Setting type: Single
    # Default value: 0.7
    StructureIronStamina = 0.7
    
    [StaminaModifiers_Biomes]
    
    ## Stamina modifier for uncleared ground in None Biomes
    # Setting type: Single
    # Default value: 1
    Untamed_None_Stamina = 1
    
    ## Stamina modifier for uncleared ground in Meadows Biomes
    # Setting type: Single
    # Default value: 1
    Untamed_Meadows_Stamina = 1
    
    ## Stamina modifier for uncleared ground in Swamp Biomes
    # Setting type: Single
    # Default value: 1
    Untamed_Swamp_Stamina = 1
    
    ## Stamina modifier for uncleared ground in Mountain Biomes
    # Setting type: Single
    # Default value: 1
    Untamed_Mountain_Stamina = 1
    
    ## Stamina modifier for uncleared ground in BlackForest Biomes
    # Setting type: Single
    # Default value: 1
    Untamed_BlackForest_Stamina = 1
    
    ## Stamina modifier for uncleared ground in Plains Biomes
    # Setting type: Single
    # Default value: 1
    Untamed_Plains_Stamina = 1
    
    ## Stamina modifier for uncleared ground in AshLands Biomes
    # Setting type: Single
    # Default value: 1
    Untamed_AshLands_Stamina = 1
    
    ## Stamina modifier for uncleared ground in DeepNorth Biomes
    # Setting type: Single
    # Default value: 1
    Untamed_DeepNorth_Stamina = 1
    
    ## Stamina modifier for uncleared ground in Ocean Biomes
    # Setting type: Single
    # Default value: 1
    Untamed_Ocean_Stamina = 1
    
    ## Stamina modifier for uncleared ground in Mistlands Biomes
    # Setting type: Single
    # Default value: 1
    Untamed_Mistlands_Stamina = 1
    
    [Strings]
    
    ## Dynamic status mapping for dirt paths
    # Setting type: String
    # Default value: Dirt Path
    PathDirt = Dirt Path
    
    ## Dynamic status mapping for  stone paths
    # Setting type: String
    # Default value: Stone Path
    PathStone = Stone Path
    
    ## Dynamic status mapping for Cultivated land
    # Setting type: String
    # Default value: Cultivated
    Cultivated = Cultivated
    
    ## Dynamic status mapping for wood structures
    # Setting type: String
    # Default value: Wood
    StructureWood = Wood
    
    ## Dynamic status mapping for core wood structures
    # Setting type: String
    # Default value: Hardwood
    StructureHardWood = Hardwood
    
    ## MDynamic status mapping for stone structures
    # Setting type: String
    # Default value: Stone
    StructureStone = Stone
    
    ## Dynamic status mapping for ironwood structures
    # Setting type: String
    # Default value: Iron
    StructureIron = Iron

## Changelog
**Version 1.0.3**
    -   Fix Cultivated stamina modifier listed under wrong header.
    -   Added 2 debuff status icons.
    -   Expose status effect icon thresholds in config file.
    -   Add Dynamic status effect name (default on). Replaces static "Speedy Path" effect with ground type.
    -   Prioritize stone pathways over blended dirt pathways.
    -   Fuzzier path detection.
    
**Version 1.0.2**
    -   Add config option for status effect name. Change the text "Speed Path" or hide it entirely!
    -   Add Support for Cultivated Land.
    -   Add Support for Stamina/Speed buffs/debuffs on uncleared ground, per biome!
    -   Fix status effect showing up while swimming.
    
**Version 1.0.1**
    -   Refactor status effect icon injection. Should now work with mods that modify status effect icons.
    
**Version 1.0.0**
    -   Initial Release
