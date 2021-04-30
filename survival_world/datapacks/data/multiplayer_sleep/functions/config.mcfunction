tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["                  Multiplayer Sleep",{"text":" / ","color":"gray"},"Global Settings                  "]
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
execute if score #display mpSleep.config matches 0 run tellraw @s ["",{"text":"[ ✔ ]","color":"green"}," Default Display: Hidden"]
execute unless score #display mpSleep.config matches 0 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function multiplayer_sleep:config/enable_default_display_hidden"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"green"},"Default Display: Hidden",{"text":".","color":"green"}]}}," Default Display: Hidden"]
execute if score #display mpSleep.config matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function multiplayer_sleep:config/enable_default_display_hidden"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to disable ","color":"red"},"Default Display: Boss Bar",{"text":".","color":"red"}]}}," ",{"text":"[ ℹ ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mpSleep set 4"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to preview ","color":"gray"},"Default Display: Boss Bar",{"text":".\nThe boss bar preview's color may not be accurate.","color":"dark_gray"}]}}," Default Display: Boss Bar"]
execute unless score #display mpSleep.config matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function multiplayer_sleep:config/enable_default_display_boss_bar"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"green"},"Default Display: Boss Bar",{"text":".","color":"green"}]}}," ",{"text":"[ ℹ ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mpSleep set 4"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to preview ","color":"gray"},"Default Display: Boss Bar",{"text":".\nThe boss bar preview's color may not be accurate.","color":"dark_gray"}]}}," Default Display: Boss Bar"]
execute if score #display mpSleep.config matches 2 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function multiplayer_sleep:config/enable_default_display_hidden"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to disable ","color":"red"},"Default Display: Action Bar",{"text":".","color":"red"}]}}," ",{"text":"[ ℹ ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mpSleep set 5"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to preview ","color":"gray"},"Default Display: Action Bar",{"text":".","color":"gray"}]}}," Default Display: Action Bar"]
execute unless score #display mpSleep.config matches 2 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function multiplayer_sleep:config/enable_default_display_action_bar"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"green"},"Default Display: Action Bar",{"text":".","color":"green"}]}}," ",{"text":"[ ℹ ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mpSleep set 5"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to preview ","color":"gray"},"Default Display: Action Bar",{"text":".","color":"gray"}]}}," Default Display: Action Bar"]
execute if score #display mpSleep.config matches 3 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function multiplayer_sleep:config/enable_default_display_hidden"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to disable ","color":"red"},"Default Display: Chat",{"text":".","color":"red"},{"text":"\nDefault","color":"dark_gray"}]}}," ",{"text":"[ ℹ ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mpSleep set 6"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to preview ","color":"gray"},"Default Display: Chat",{"text":".","color":"gray"}]}}," Default Display: Chat"]
execute unless score #display mpSleep.config matches 3 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function multiplayer_sleep:config/enable_default_display_chat"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"green"},"Default Display: Chat",{"text":".","color":"green"},{"text":"\nDefault","color":"dark_gray"}]}}," ",{"text":"[ ℹ ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mpSleep set 6"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to preview ","color":"gray"},"Default Display: Chat",{"text":".","color":"gray"}]}}," Default Display: Chat"]
execute if score #immediateChat mpSleep.config matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function multiplayer_sleep:config/disable_immediate_chat"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to disable ","color":"red"},"Immediate Chat Display",{"text":".","color":"red"},{"text":"\nWhen enabled, this sends Chat Display messages at the time the player enters the bed rather than after 5 seconds of sleeping.","color":"gray"},{"text":"\nDefault: Disabled","color":"dark_gray"}]}}," Immediate Chat Display"]
execute unless score #immediateChat mpSleep.config matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function multiplayer_sleep:config/enable_immediate_chat"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"green"},"Immediate Chat Display",{"text":".","color":"green"},{"text":"\nWhen enabled, this sends Chat Display messages at the time the player enters the bed rather than after 5 seconds of sleeping.","color":"gray"},{"text":"\nDefault: Disabled","color":"dark_gray"}]}}," Immediate Chat Display"]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #percent mpSleep.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enter the percentage of players required to sleep.\nEnter ","color":"gray"},"0",{"text":" to require only one player.","color":"gray"},{"text":"\nAccepts: whole numbers 0-100\nDefault: 0","color":"dark_gray"}]}}," Players Required to Sleep ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#percent","objective":"mpSleep.config"},"color":"gray"},{"text":"%)","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/bossbar set multiplayer_sleep:progress color "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enter a color for the boss bar display.","color":"gray"},{"text":"\nAccepts: blue, green, pink, purple, red, white, yellow\nDefault: white","color":"dark_gray"}]}}," Boss Bar Color"]
execute if score #alwaysClear mpSleep.config matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function multiplayer_sleep:config/disable_always_clear"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to disable ","color":"red"},"Always Reset Weather Cycle",{"text":".","color":"red"},{"text":"\nWhen enabled, the weather cycle will reset to clear upon sleeping, whether or not the weather is clear already.","color":"gray"},{"text":"\nWhen sleeping occurs, this may cause rain to briefly appear, and the weather will not rain for a while afterward. This setting is incompatible with gamerule doWeatherCycle false.","color":"red"},{"text":"\nWhen disabled, the weather cycle will only reset to clear upon sleeping if it's already raining, just like in vanilla.","color":"gray"},{"text":"\nDefault: Disabled","color":"dark_gray"}]}}," Always Reset Weather Cycle"]
execute unless score #alwaysClear mpSleep.config matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function multiplayer_sleep:config/enable_always_clear"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"green"},"Always Reset Weather Cycle",{"text":".","color":"green"},{"text":"\nWhen enabled, the weather cycle will reset to clear upon sleeping, whether or not the weather is clear already.","color":"gray"},{"text":"\nWhen sleeping occurs, this may cause rain to briefly appear, and the weather will not rain for a while afterward. This setting is incompatible with gamerule doWeatherCycle false.","color":"red"},{"text":"\nWhen disabled, the weather cycle will only reset to clear upon sleeping if it's already raining, just like in vanilla.","color":"gray"},{"text":"\nDefault: Disabled","color":"dark_gray"}]}}," Always Reset Weather Cycle"]
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
execute store result score #sendCommandFeedback mpSleep.config run gamerule sendCommandFeedback
execute if score #sendCommandFeedback mpSleep.config matches 1 run function multiplayer_sleep:hide_command_feedback