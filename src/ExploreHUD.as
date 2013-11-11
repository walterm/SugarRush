package
{
	import org.flixel.*;
	
	public class ExploreHUD extends FlxGroup
	{
		private var worldEdgeRight:Number = FlxG.worldBounds.x;
		private var worldEdgeBottom:Number = FlxG.worldBounds.y;
		protected var healthLabel:FlxText = new FlxText(0, 5, 100, "Health: ");
		protected var healthValLabel:FlxText = new FlxText(worldEdgeRight - 50, 5, 20, "-1/10");
		protected var candyLabel:FlxText = new FlxText(worldEdgeRight - 150, 15, 100, "Candies: ");
		protected var candyValLabel:FlxText = new FlxText(worldEdgeRight - 50, 15, 20, "-1");
		
		protected var _inventoryBox:FlxSprite;
		protected var _inventoryDividerH:FlxSprite;
		protected var _inventoryDividerV:FlxSprite;
		protected var _weaponsText:FlxSprite;
		protected var _candiesText:FlxSprite;
		protected var _redSprite:FlxSprite;
		protected var _blueSprite:FlxSprite;
		protected var _whiteSprite:FlxSprite;
		protected var _redCount:FlxText;
		protected var _blueCount:FlxText;
		protected var _whiteCount:FlxText;
		
		public function ExploreHUD()
		{
			healthLabel = new FlxText(0, 5, 100, "Health: ");
			healthValLabel= new FlxText(worldEdgeRight - 50, 5, 20, "-1/10");
			candyLabel = new FlxText(worldEdgeRight - 150, 15, 100, "Candies: ");
			candyValLabel = new FlxText(worldEdgeRight - 50, 15, 20, "-1");;
			var thing:Number = FlxG.worldBounds.x;
			this.add(healthLabel);
			this.add(healthValLabel);
			this.add(candyLabel);
			this.add(candyValLabel);
			
			_inventoryBox = new FlxSprite(0, FlxG.height * 0.90).makeGraphic(FlxG.width, FlxG.height * 0.10, 0xFF000000);
			_inventoryBox.scrollFactor.x = _inventoryBox.scrollFactor.y = 0;
			_inventoryDividerH = new FlxSprite(0, FlxG.height * 0.90).makeGraphic(FlxG.width, 1);
			_inventoryDividerH.scrollFactor.x = _inventoryDividerH.scrollFactor.y = 0;
			_inventoryDividerV = new FlxSprite(FlxG.width * 0.60, FlxG.height * 0.90).makeGraphic(1, FlxG.height * 0.10);
			_inventoryDividerV.scrollFactor.x = _inventoryDividerV.scrollFactor.y = 0;
			add(_inventoryBox);
			add(_inventoryDividerH);
			add(_inventoryDividerV);
			
			_weaponsText = new FlxText(0, FlxG.height * 0.90, FlxG.width, "Weapons:");
			_candiesText = new FlxText(FlxG.width * 0.60, FlxG.height * 0.90, FlxG.width, "Candies:");
			_weaponsText.scrollFactor.x = _weaponsText.scrollFactor.y = 0;
			_candiesText.scrollFactor.x = _candiesText.scrollFactor.y = 0;
			add(_weaponsText);
			add(_candiesText);
			
			_redSprite = new FlxSprite(FlxG.width * 0.65, FlxG.height * 0.95).makeGraphic(15, 15, 0xFFFF0000);
			_blueSprite = new FlxSprite(FlxG.width * 0.75, FlxG.height * 0.95).makeGraphic(15, 15, 0xFF0000FF);
			_whiteSprite = new FlxSprite(FlxG.width * 0.85, FlxG.height * 0.95).makeGraphic(15, 15, 0xFFFFFFFF);
			_redSprite.scrollFactor.x = _redSprite.scrollFactor.y = 0;
			_blueSprite.scrollFactor.x = _blueSprite.scrollFactor.y = 0;
			_whiteSprite.scrollFactor.x = _whiteSprite.scrollFactor.y = 0;
			add(_redSprite);
			add(_blueSprite);
			add(_whiteSprite);
			
			_redCount = new FlxText(FlxG.width * 0.68, FlxG.height * 0.95, FlxG.width, "x" + Inventory.candyCount(0));
			_blueCount = new FlxText(FlxG.width * 0.78, FlxG.height * 0.95, FlxG.width, "x" + Inventory.candyCount(1));
			_whiteCount = new FlxText(FlxG.width * 0.88, FlxG.height * 0.95, FlxG.width, "x" + Inventory.candyCount(2));
			_redCount.scrollFactor.x = _redCount.scrollFactor.y = 0;
			_blueCount.scrollFactor.x = _blueCount.scrollFactor.y = 0;
			_whiteCount.scrollFactor.x = _whiteCount.scrollFactor.y = 0;
			add(_redCount);
			add(_blueCount);
			add(_whiteCount);
		}
		
		override public function update():void {
			_redCount.text = "x" + Inventory.candyCount(0);
			_blueCount.text = "x" + Inventory.candyCount(1);
			_whiteCount.text = "x" + Inventory.candyCount(2);
			super.update();
		}
	}
}