// Doom 4 autosplitter
// Works with lastest steam version as of 19 July 2016 (So 1.04 ?) With the 2 gameresources.patch files removed 

// Thanks to TheFuncannon and sychotixx for the first .asl file that helped me a lot.

// Don't forget to right click -> compare with -> game time in liveslipt 

state("DOOMx64")
{
	// Timer restart when you exit a loading screen 
	// (You have to press space)
	// So basically here you can chill during loading
	//bool isLoading: 0x31D3B10;


	// Timer restart when "real" loading is finished 
	// (even if you don't press space, the time WILL start)
	// Here you need to spam the spacebar during loading screen
	bool isLoading : 0xB99B1E4;
	
	bool isIntro : 0x02959360, 0x18, 0x130, 0x18F0;

	string20 mapName : "tier0_s64.dll", 0x0004D130, 0x1C;
}

start
{
	// Start the timer only if it's not running
	// Mapname contains The UAC, we're not loading anything,  We used to be in the intro and we're not anymore
	return (current.mapName.Contains("The UAC") && !current.isLoading && (old.isIntro && !current.isIntro));
}

isLoading
{
	return current.isLoading;
}

split
{
	return (current.mapName != null && 
			current.mapName != "" && 
			old.mapName != current.mapName && 
			!old.mapName.Contains("menu") && 
			!old.mapName.Contains("playing") &&
			!current.mapName.Contains("menu") && 
			!current.mapName.Contains("playing")
			);
}

exit 
{ 
	// stop timer when game exit (like when the game crashes)
	timer.IsGameTimePaused = true; 
}

reset
{
	//print("RESET");
	return (false);
	//return current.mapName.StartsWith("intro") && !current.canStart && !current.mainMenu && current.start && !current.isLoading;
}
