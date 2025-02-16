If you are also having problems with DPSMate not showing some group members for no reason at all, I made a quick update to the addon which should in theory fix the problem:
https://github.com/Fedilious/DPSMate/archive/refs/heads/master.zip

Before running it you should **remove your character only(!!!!!!) DPSMate.lua**, that is follow step 4 from the README:  
> Remove DPSMate.lua and DPSMate.lua.bak in your `WTF/Account/<YOUR ACC NAME>/Nordanaar/<YOUR CHAR NAME>/SavedVariables/` folder

This is experimental so expect all your previous damage reports to be lost!

## Download and install:
1. Download the [AddOn folder](https://github.com/Fedilious/DPSMate/archive/refs/heads/master.zip) here.
2. Put the contents of the folder into `Interface/AddOns`. Make sure that there is no DPSMate-master folder.
3. I recommend increasing AddOn memory to 150 MB.
4. Remove DPSMate.lua and DPSMate.lua.bak in your `WTF/Account/YOUR ACC NAME/Kronos/YOUR CHAR NAME/SavedVariables/` folder (if you had DPSMate installed before)
   - Do this while you are logged OUT of the game, otherwise it will try to write on top of the deleted files and all hell will break loose
5. Add these lines to your `WTF/config.wtf` file:
```
SET CombatLogRangeParty "150"  
SET CombatLogRangePartyPet "150"  
SET CombatLogRangeFriendlyPlayers "150"  
SET CombatLogRangeFriendlyPlayersPets "150"  
SET CombatLogRangeHostilePlayers "150"  
SET CombatLogRangeHostilePlayersPets "150"  
SET CombatLogRangeCreature "150"
```

# DPSMate: A combat analysis tool

## What is DPSMate?
DPSMate is not only a meter which shows numbers of the raid, such as damage done, damage taken, dispells etc., it is moreover an analyzing tool to review the raid or the previous fight as accurately as possible. This data can help to improve the gameplay or to judge better over someones performance.

![img](http://i.imgur.com/I7vgsIj.png)  

## Mentionable features of DPSMate
Frame:   
- Several frames, allowing to show different modes at the same time   
- Resizable, allowing to adjust it to the interface   
- Fully costumizable by using the configuration menu   

Modes:   
- ~40 different modes

Some of them are:   
- Healing and Absorbs (Effective healing and Absorbs)   
- Deaths, recall your or someones death   
- Dispells, showing everyones dispells including hot dispells such as Abolish Poison   
- Interrupts, including stuns and silences   
- Auras (Gained, Lost and Uptime)   
- Compare mode      
- etc.   

Misc:   
- Several Segments (Total, Current, and previous fights)   
- Synchronizing, to guarantee accurate data   
- Report function for every mode and everys player data    
- And many more...   

## But pictures speak more than words:   
![img](http://i.imgur.com/tjjeryJ.png)  
![img](http://i.imgur.com/MwPGjKk.png)  
![img](http://i.imgur.com/psYZ7ND.png)  
![img](http://i.imgur.com/3YaqUz0.png)  
![img](http://i.imgur.com/3YuNJaV.png)  
![img](http://i.imgur.com/79iyOov.png)  
![img](http://i.imgur.com/pnIia7A.png)  
![img](http://i.imgur.com/AObESgI.jpg)  
![img](http://i.imgur.com/jOTG3ip.png)  


## Getting errors?

If you are being overwhelmed by DPSMate errors in your chat window, follow these steps:
1. Enable the `DPSMate_Debug` addon. This will hide most errors from the public eye.
2. Take a screenshot or paste of the error and [let me know!](https://github.com/Fedilious/DPSMate/issues)

## Support it!
1. [Report bugs](https://github.com/Fedilious/DPSMate/issues) that you found.
2. Suggest improvements. 
3. You can also [donate](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=57SWBZ3B7RTTQ) for the original creator's projects if you like.

cheers!  
Shino
