Config = {
	Langs = "en",                         -- Set the language for your script (you can change this if you support multiple languages).

  UseMetabolism = true,                -- Enable/disable metabolism system. If true, metabolism effects like stamina and hunger will affect players.

  EveryTimeStatusDown = 3600,          -- Time interval (in milliseconds) for status drop (3.6 seconds).
  HowAmountThirstWhileRunning = 3,     -- How much thirst decreases while running (value decreases every 3.6 seconds).
  HowAmountHungerWhileRunning = 2,     -- How much hunger decreases while running.
  HowAmountThirst = 2,                 -- How much thirst decreases while not running (idle state).
  HowAmountHunger = 1,                 -- How much hunger decreases while not running (idle state).
  HowAmountMetabolismWhileRunning = 4, -- How much metabolism decreases while running.
  HowAmountMetabolism = 2,             -- How much metabolism decreases while not running (idle state).

  FirstHungerStatus = 1000,            -- Starting value for hunger (1000 is full).
  FirstThirstStatus = 1000,            -- Starting value for thirst (1000 is full).

  OnRespawnHungerStatus = 1000,        -- Hunger resets to full upon respawn.
  OnRespawnThirstStatus = 1000,        -- Thirst resets to full upon respawn.

  FirstMetabolismStatus = 0,           -- Initial metabolism status (0 means no change initially).


  -- How to Use:
  -- 1. You can adjust the status values (thirst, hunger, metabolism) according to your needs. Higher values will replenish more.
  -- 2. The `PropName` should correspond to a valid in-game object (model) that the player interacts with.
  -- 3. The `Effect` field allows you to apply visual post-effects to players, such as getting drunk, blurred vision, etc.
  -- 4. The `EffectDuration` is measured in minutes. Setting it to `1` means the effect will last for 60 seconds.

  -- For a full list of other visual effects, check this link:
  -- https://github.com/femga/rdr3_discoveries/blob/master/graphics/animpostfx/animpostfx.lua
  -- You can replace `PlayerDrunkSaloon1` with any other effect from this list, depending on the gameplay experience you want to create.
  ItemsToUse = {
    {
      Name = "whisky",               -- The spawn code or identifier for this item.
      Thirst = 500,                  -- How much this item replenishes the player's thirst.
      Hunger = 0,                    -- How much this item replenishes the player's hunger.
      Metabolism = 150,              -- How much metabolism is affected (positive or negative).
      Stamina = 50,                  -- How much stamina is affected by consuming this item.
      InnerCoreHealth = 50,          -- Effect on the player's inner core health.
      OuterCoreHealth = 25,          -- Effect on the player's outer core health.
      PropName = "s_inv_whiskey02x", -- The in-game prop model to display when using this item.
      Animation = "drink",           -- The animation the player will use when consuming this item (e.g., drink or eat).
      Effect = "PlayerDrunkSaloon1", -- The visual effect applied to the player. This is the 'drunk' effect. For more effects, see the linked URL below.
      EffectDuration = 1             -- Duration of the effect in minutes (this script converts 1 to 60 seconds).
    },
    {
      Name = "wine",
      Thirst = 400,
      Hunger = 0,
      Metabolism = 100,
      Stamina = 40,
      InnerCoreHealth = 40,
      OuterCoreHealth = 20,
      PropName = "p_bottlewine01x",
      Animation = "drink",
      Effect = "PlayerDrunkSaloon1",
      EffectDuration = 1
    },
    {
      Name = "vodka",
      Thirst = 450,
      Hunger = 0,
      Metabolism = 120,
      Stamina = 45,
      InnerCoreHealth = 45,
      OuterCoreHealth = 25,
      PropName = "p_bottlemedicine09x",
      Animation = "drink",
      Effect = "PlayerDrunkSaloon1",
      EffectDuration = 1
    },
    {
      Name = "beer",
      Thirst = 400,
      Hunger = 0,
      Metabolism = 100,
      Stamina = 40,
      InnerCoreHealth = 35,
      OuterCoreHealth = 15,
      PropName = "p_bottlebeer01a",
      Animation = "drink",
      Effect = "PlayerDrunkSaloon1",
      EffectDuration = 1
    },
    {
      Name = "tequila",
      Thirst = 450,
      Hunger = 0,
      Metabolism = 120,
      Stamina = 45,
      InnerCoreHealth = 45,
      OuterCoreHealth = 25,
      PropName = "p_bottlechampagne01x",
      Animation = "drink",
      Effect = "PlayerDrunkSaloon1",
      EffectDuration = 1
    },
    {
      Name = "tropicalPunchMoonshine",
      Thirst = 500,
      Hunger = 0,
      Metabolism = 150,
      Stamina = 50,
      InnerCoreHealth = 50,
      OuterCoreHealth = 30,
      PropName = "p_masonjarmoonshine01x",
      Animation = "drink",
      Effect = "PlayerDrunkSaloon1",
      EffectDuration = 1
    },
    {
      Name = "wildCiderMoonshine",
      Thirst = 500,
      Hunger = 0,
      Metabolism = 150,
      Stamina = 50,
      InnerCoreHealth = 50,
      OuterCoreHealth = 30,
      PropName = "p_masonjarmoonshine01x",
      Animation = "drink",
      Effect = "PlayerDrunkSaloon1",
      EffectDuration = 1
    },
    {
      Name = "raspberryale",
      Thirst = 500,
      Hunger = 0,
      Metabolism = 150,
      Stamina = 50,
      InnerCoreHealth = 50,
      OuterCoreHealth = 30,
      PropName = "p_bottlebeer01a",
      Animation = "drink",
      Effect = "PlayerDrunkSaloon1",
      EffectDuration = 1
    },
    {
      Name = "consumable_bluegil",
      Thirst = 100,
      Hunger = 200,
      Metabolism = 100,
      Stamina = 150,
      InnerCoreHealth = 15,
      OuterCoreHealth = 10,
      PropName = "p_cs_fishlargemouthbass01x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_breakfast",
      Thirst = 50,
      Hunger = 300,
      Metabolism = 150,
      Stamina = 50,
      InnerCoreHealth = 20,
      OuterCoreHealth = 10,
      PropName = "p_hamsandwich01x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_caramel",
      Thirst = 10,
      Hunger = 100,
      Metabolism = 200,
      Stamina = 50,
      InnerCoreHealth = 5,
      OuterCoreHealth = 10,
      PropName = "s_candybag01x_blue",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_chocolate",
      Thirst = 10,
      Hunger = 100,
      Metabolism = 200,
      Stamina = 50,
      InnerCoreHealth = 5,
      OuterCoreHealth = 10,
      PropName = "s_chocolatebar02x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_coffee",
      Thirst = 300,
      Hunger = 100,
      Metabolism = 250,
      Stamina = 200,
      InnerCoreHealth = 10,
      OuterCoreHealth = 5,
      InnerCoreHealthGold = 0,
      OuterCoreHealthGold = 500,
      InnerCoreStaminaGold = 200,
      OuterCoreStaminaGold = 1000,
      PropName = "p_mugcoffee01x",
      Animation = "drink",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_fruitsalad",
      Thirst = 50,
      Hunger = 200,
      Metabolism = 150,
      Stamina = 100,
      InnerCoreHealth = 15,
      OuterCoreHealth = 10,
      PropName = "p_bowl04x_stew",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_game",
      Thirst = 50,
      Hunger = 300,
      Metabolism = 200,
      Stamina = 200,
      InnerCoreHealth = 25,
      OuterCoreHealth = 15,
      PropName = "p_cs_jerky01x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_herb_evergreen_huckleberry",
      Thirst = 0,
      Hunger = 50,
      Metabolism = 150,
      Stamina = 50,
      InnerCoreHealth = 10,
      OuterCoreHealth = 5,
      PropName = "s_inv_raspberry01bx",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_herb_wintergreen_berry",
      Thirst = 0,
      Hunger = 50,
      Metabolism = 150,
      Stamina = 50,
      InnerCoreHealth = 10,
      OuterCoreHealth = 5,
      PropName = "s_inv_rhubarb01x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_kidneybeans_can",
      Thirst = 300,
      Hunger = 100,
      Metabolism = 500,
      Stamina = 100,
      InnerCoreHealth = 10,
      OuterCoreHealth = 5,
      PropName = "s_canbeans01x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_peach",
      Thirst = 100,
      Hunger = 150,
      Metabolism = 100,
      Stamina = 120,
      InnerCoreHealth = 10,
      OuterCoreHealth = 5,
      PropName = "s_peach01x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_pear",
      Thirst = 100,
      Hunger = 150,
      Metabolism = 100,
      Stamina = 120,
      InnerCoreHealth = 10,
      OuterCoreHealth = 5,
      PropName = "p_pear_01x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_raspberrywater",
      Thirst = 500,
      Hunger = 50,
      Metabolism = 50,
      Stamina = 100,
      InnerCoreHealth = 10,
      OuterCoreHealth = 10,
      PropName = "p_water01x",
      Animation = "drink",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_salmon",
      Thirst = 50,
      Hunger = 250,
      Metabolism = 200,
      Stamina = 150,
      InnerCoreHealth = 20,
      OuterCoreHealth = 10,
      PropName = "p_cs_basfishonthewal01x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_salmon_can",
      Thirst = 300,
      Hunger = 100,
      Metabolism = 300,
      Stamina = 100,
      InnerCoreHealth = 10,
      OuterCoreHealth = 5,
      PropName = "s_canbeans01x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_trout",
      Thirst = 50,
      Hunger = 250,
      Metabolism = 200,
      Stamina = 150,
      InnerCoreHealth = 20,
      OuterCoreHealth = 10,
      PropName = "p_cs_fishlargemouthbass01x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_veggies",
      Thirst = 50,
      Hunger = 250,
      Metabolism = 200,
      Stamina = 150,
      InnerCoreHealth = 20,
      OuterCoreHealth = 10,
      PropName = "p_carrot01x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "cookedbluegil",
      Thirst = 100,
      Hunger = 400,
      Metabolism = 250,
      Stamina = 200,
      InnerCoreHealth = 25,
      OuterCoreHealth = 15,
      PropName = "p_cs_fishlargemouthbass01x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "milk",
      Thirst = 500,
      Hunger = 100,
      Metabolism = 200,
      Stamina = 100,
      InnerCoreHealth = 20,
      OuterCoreHealth = 10,
      PropName = "p_bottlejd01x",
      Animation = "drink",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "cheesecake",
      Thirst = 0,
      Hunger = 300,
      Metabolism = 150,
      Stamina = 100,
      InnerCoreHealth = 15,
      OuterCoreHealth = 10,
      PropName = "p_cheeseblock_a",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_blueberrypie",
      Thirst = 0,
      Hunger = 350,
      Metabolism = 200,
      Stamina = 150,
      InnerCoreHealth = 15,
      OuterCoreHealth = 10,
      PropName = "p_pie01x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_chickenpie",
      Thirst = 0,
      Hunger = 400,
      Metabolism = 250,
      Stamina = 200,
      InnerCoreHealth = 25,
      OuterCoreHealth = 15,
      PropName = "p_pie01x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_chocolatecake",
      Thirst = 0,
      Hunger = 400,
      Metabolism = 250,
      Stamina = 200,
      InnerCoreHealth = 25,
      OuterCoreHealth = 15,
      PropName = "p_bread01x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_chocolatecoffee",
      Thirst = 300,
      Hunger = 100,
      Metabolism = 250,
      Stamina = 200,
      InnerCoreHealth = 10,
      OuterCoreHealth = 5,
      PropName = "p_mugcoffee01x",
      Animation = "drink",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_coffeecake",
      Thirst = 0,
      Hunger = 350,
      Metabolism = 200,
      Stamina = 150,
      InnerCoreHealth = 15,
      OuterCoreHealth = 10,
      PropName = "p_bread03x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_crumbcake",
      Thirst = 0,
      Hunger = 300,
      Metabolism = 150,
      Stamina = 100,
      InnerCoreHealth = 15,
      OuterCoreHealth = 10,
      PropName = "p_bread03x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_cupcake",
      Thirst = 0,
      Hunger = 300,
      Metabolism = 150,
      Stamina = 100,
      InnerCoreHealth = 15,
      OuterCoreHealth = 10,
      PropName = "p_bread03x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_donut",
      Thirst = 0,
      Hunger = 300,
      Metabolism = 150,
      Stamina = 100,
      InnerCoreHealth = 15,
      OuterCoreHealth = 10,
      PropName = "p_bread03x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_grapejelly",
      Thirst = 0,
      Hunger = 150,
      Metabolism = 100,
      Stamina = 120,
      InnerCoreHealth = 10,
      OuterCoreHealth = 5,
      PropName = "p_bread01x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_horsepeppermints",
      Thirst = 0,
      Hunger = 50,
      Metabolism = 100,
      Stamina = 50,
      InnerCoreHealth = 10,
      OuterCoreHealth = 5,
      PropName = "s_candybag01x_red",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_lemoncake",
      Thirst = 0,
      Hunger = 300,
      Metabolism = 150,
      Stamina = 100,
      InnerCoreHealth = 15,
      OuterCoreHealth = 10,
      PropName = "p_bread03x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_lemondrops",
      Thirst = 0,
      Hunger = 50,
      Metabolism = 100,
      Stamina = 50,
      InnerCoreHealth = 10,
      OuterCoreHealth = 5,
      PropName = "s_candybag01x_red",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_peachcobbler",
      Thirst = 0,
      Hunger = 300,
      Metabolism = 150,
      Stamina = 100,
      InnerCoreHealth = 15,
      OuterCoreHealth = 10,
      PropName = "s_peach01x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_peachjelly",
      Thirst = 0,
      Hunger = 150,
      Metabolism = 100,
      Stamina = 120,
      InnerCoreHealth = 10,
      OuterCoreHealth = 5,
      PropName = "s_peach01x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_peppermint",
      Thirst = 0,
      Hunger = 50,
      Metabolism = 100,
      Stamina = 50,
      InnerCoreHealth = 10,
      OuterCoreHealth = 5,
      PropName = "s_candybag01x_blue",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_poundcake",
      Thirst = 0,
      Hunger = 300,
      Metabolism = 150,
      Stamina = 100,
      InnerCoreHealth = 15,
      OuterCoreHealth = 10,
      PropName = "p_bread03x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_pretzel",
      Thirst = 0,
      Hunger = 150,
      Metabolism = 100,
      Stamina = 120,
      InnerCoreHealth = 10,
      OuterCoreHealth = 5,
      PropName = "p_bread03x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_raspberryjelly",
      Thirst = 0,
      Hunger = 150,
      Metabolism = 100,
      Stamina = 120,
      InnerCoreHealth = 10,
      OuterCoreHealth = 5,
      PropName = "s_inv_raspberry01bx",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_spongecake",
      Thirst = 0,
      Hunger = 300,
      Metabolism = 150,
      Stamina = 100,
      InnerCoreHealth = 15,
      OuterCoreHealth = 10,
      PropName = "p_bread03x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    },
    {
      Name = "consumable_steakpie",
      Thirst = 0,
      Hunger = 400,
      Metabolism = 250,
      Stamina = 200,
      InnerCoreHealth = 25,
      OuterCoreHealth = 15,
      PropName = "p_pie01x",
      Animation = "eat",
      Effect = "",
      EffectDuration = ""
    }
  }
}