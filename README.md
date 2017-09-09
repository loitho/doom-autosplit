# Doom Autosplitter file

## What does it do ?

 - Auto start : The time will start when doom guy pick up the handgun after exiting his tomb  
 - Removing loading time
 - Auto split : it will split when the next level has finised loading
 - Auto end : As soon as you'll start the glorykill on the spider, the timer will do a final split

Split at each level change : Should be working (90% sure)  /!\ it splits only at the end of the loading screen you get when finishing a level. Not when you push a button.


## How to get those value for the next patch ? 

### bossHealth

 - type : *float*
 - Requirement : You have to be during the bossfight level (not "the well", you have to be facing the spider) 
 - Default value : 45500
 - Min value : 1     (the value will be 1 when the boss is during the "glory kill" phase) 
 
 
### finalhit

 - type : *byte*
 - Requirement : You have to be during the bossfight level (not "the well", you have to be facing the spider) 
 - Default value : 1
 - value changes to 0 as soon as you start glory killing the spider
 




##Interesting link if you want to play with cheat engine

https://www.solarstrike.net/phpBB3/viewtopic.php?t=65
http://www.solarstrike.net/phpBB3/viewtopic.php?f=5&t=900
