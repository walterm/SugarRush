package  
{
	public class Sources 
	{                
		//images and spritesheets 
		[Embed(source="../assets/player_back.png")] public static var playerBack:Class;
		[Embed(source="../assets/player_front.png")] public static var playerFront:Class;
		[Embed(source="../assets/player_left.png")] public static var playerLeft:Class;
		[Embed(source="../assets/player_right.png")] public static var playerRight:Class;
		[Embed(source="../assets/map.png")] public static var ExploreBackground:Class;	
		[Embed(source="../assets/battle_background.png")] public static var BattleBackground:Class;
		[Embed(source="../assets/playerb_fight.png")] public static var battlePlayer:Class;
		[Embed(source="../assets/playerb_hurt.png")] public static var battlePlayerHurt:Class;	
		[Embed(source="../assets/playerb_eat.png")] public static var battlePlayerEat:Class;	
		[Embed(source="../assets/playerb_attack.png")] public static var battlePlayerAttack:Class;	
		
		[Embed(source="../assets/rawcandy_blue.png")] public static var candyBlue:Class;	
		[Embed(source="../assets/rawcandy_red.png")] public static var candyRed:Class;	
		[Embed(source="../assets/rawcandy_white.png")] public static var candyWhite:Class;

		[Embed(source="../assets/tomatosprite.png")] public static var Tomato:Class;
		[Embed(source="../assets/tomato_small.png")] public static var SmallTomato:Class;
		[Embed(source="../assets/carrotsprite.png")] public static var Carrot:Class;
		[Embed(source="../assets/carrot_small.png")] public static var SmallCarrot:Class;
		[Embed(source="../assets/eggplantsprite.png")] public static var Eggplant:Class;
		[Embed(source="../assets/eggplant_small.png")] public static var SmallEggplant:Class;
		[Embed(source="../assets/lettucesprite.png")] public static var Lettuce:Class;	
		[Embed(source="../assets/lettuce_small.png")] public static var SmallLettuce:Class;
		
		[Embed(source="../assets/button_eat.png")] public static var buttonEat:Class;	
		[Embed(source="../assets/button_attack.png")] public static var buttonAttack:Class;	
		[Embed(source="../assets/button_run.png")] public static var buttonRun:Class;	
		[Embed(source="../assets/button_craft.png")] public static var buttonCraft:Class;	
		
		//fonts
		//actually idk if this'll work
		[Embed(source="../assets/Cookies.ttf", fontName="COOKIES", embedAsCFF="false")] protected var fontCookies:Class;
		
		//music and sound effects
		
		//buff stuff
		
		public static const defaultBuffStrings:Array = ["hit", "hit", "hit", "hit", "hit", "equip", "equip", "equip", "equip", "equip"];
		
		//text
		public static const enemyNames:Array = ["tomato", "carrot", "eggplant", "lettuce"];
		public static const enemyExploreSpriteMap:Object = {
			"tomato": SmallTomato,
			"carrot": SmallCarrot,
			"eggplant": SmallEggplant,
			"lettuce": SmallLettuce
		};
		public static const enemyBattleSpriteMap:Object = {
			"tomato": Tomato,
			"carrot": Carrot,
			"eggplant": Eggplant,
			"lettuce": Lettuce
		};
	}
}