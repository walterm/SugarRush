package
{
	import org.flixel.*;
	
	public class SplashScreenState extends FlxState
	{
		
		[Embed(source="../assets/Cookies.ttf", fontName="COOKIES", embedAsCFF="false")] protected var fontCookies:Class;
		
		public var background:FlxSprite;
		private var startText:FlxText;
		private var instrText:FlxText;
		private var creditText:FlxText;
		
		public function SplashScreenState()
		{
			//initialize/reset all the stats
			Inventory.resetInventory();
			PlayerData.instance.initialize();
			ExplorePlayState.resetInstance();
			
			
			background = new FlxSprite(0,0);
			background.loadGraphic(Sources.SplashScreenBackground);
			add(background);
			
			startText = new FlxText(10, (FlxG.height)-65, FlxG.width, "Press ENTER to start!");
			startText.color = 0x01FFFFFF;
			startText.shadow = 0x01000000;
			startText.setFormat("COOKIES",26);
			startText.alignment = "center";
			add(startText);
			
			creditText = new FlxText(10, (FlxG.height)-35, FlxG.width, "Press C for credits");
			creditText.color = 0x01FFFFFF;
			creditText.shadow = 0x01000000;
			creditText.setFormat("COOKIES",16);
			creditText.alignment = "center";
			add(creditText);
			
			instrText = new FlxText(10, (FlxG.height)-25, FlxG.width, "press SPACE for instructions");
			instrText.color = 0x01FFFFFF;
			instrText.shadow = 0x01000000;
			instrText.setFormat("COOKIES",18);
			instrText.alignment = "center";
			//add(instrText);
		}
		
		override public function update():void {
			if (FlxG.keys.justPressed("S")) {
				FlxG.fade(0x00000000, 1, startGame);
//			} else if (FlxG.keys.SPACE){
//				background.loadGraphic(Sources.Instructions);
//				add(background);
//				startText.text="";
//				remove(instrText);
			} else if (FlxG.keys.ENTER){
				background.loadGraphic(Sources.Instructions2);
				add(background);
				remove(instrText);
				remove(startText);
				//we can make this an image or just fill text. the possibilities are endless
				startText = new FlxText(30, (FlxG.height)-280, FlxG.width-30, 
					"Your beloved candy land is in danger! \n" +
					"Veggies are invading! \n" +
					"Use your candy weapons to defeat them and reclaim your land! \n" +
					" \n \n " +
					"use mouse to select actions & items, \n use arrow keys for movement" +
					"\n \n Press S to play!");
				startText.color = 0x01FFFFFF;
				startText.shadow = 0x01000000;
				startText.setFormat("COOKIES",26);
				startText.alignment="left";
				add(startText);
				
				/*
				Candyland was a peaceful land of joy and sugary goodness. People of Candyland plucked gumdrops and peppermint patties from treetops and used them to nourish their bodies, to keep their blood sugar level happily high. Children suckled on lollipops, birds drank from honey fountains. All was well. 
				-press ENTER to continue - 
				Then one day, strange portals spawned in the four corners of Candyland. Out of these portals came strange leafy beasts. They plundered the villages of Candyland, force feeding small children leafy greens and stealing the candy that had nourished the people of Candyland for so long. 
				-press ENTER to continue- 
				Without their candy, the people of Candyland slowly lost their strength. Only one small boy with a propeller hat, who had gorged on candy the night before the attacks, had enough strength to continue. This boy would now embark on the treacherous journey to eliminate the vegetable monsters and restore peace to Candyland once again…
				-press ENTER to start-
				*/
			} else if (FlxG.keys.C) 
			{
				creditsScreen();
				
			}
		}
		
		private function startGame():void {
			trace("hi");
			FlxG.switchState(ExplorePlayState.instance);
		}
		
		private function creditsScreen():void {
			var credits:CreditsState = new CreditsState();
			FlxG.switchState(credits);
		}
	}
}