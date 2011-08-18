/*
	Erko Bridee

	Style Column Chart colors
*/
package com.erkobridee.chartUtil
{
	import mx.graphics.GradientEntry;
	import mx.graphics.LinearGradient;
	import mx.graphics.SolidColorStroke;
	import mx.graphics.Stroke;
	import mx.utils.ColorUtil;
	
	[Bindable]
	public class StyleColumnChart
	{
		public function StyleColumnChart() {}
		
		//----------------------------------------------------------------------
		// @BEGIN: LinearGradient color
		
		public static function linearGradientColor(colorDef:uint, angle:Number=-1):LinearGradient {
			var linearGradient:LinearGradient = new LinearGradient();
			var arr:Array = [];
			
			var colorLight:uint = ColorUtil.adjustBrightness(colorDef,65);
			var colorDark:uint = ColorUtil.adjustBrightness(colorDef,-35);
			
			arr.push(new GradientEntry(colorDark, 0.0, 0.8));
			arr.push(new GradientEntry(colorLight, 0.8, 0.7));
			
			if(angle > 0) {
				linearGradient.rotation = angle;
			} 
						
			linearGradient.entries = arr;
			return linearGradient;
		}
		
		public static function linearGradientTwoColor(colorBegin:uint, colorEnd:uint, angle:Number=-1):LinearGradient {
			var linearGradient:LinearGradient = new LinearGradient();
			var arr:Array = [];
			
			arr.push(new GradientEntry(colorBegin, 0.0, 0.8));
			arr.push(new GradientEntry(colorEnd, 1.0, 0.9));
			
			if(angle > 0) {
				linearGradient.rotation = angle;
			} 
			
			linearGradient.entries = arr;
			return linearGradient;
		}		

		public static function get redLinearGradient():LinearGradient {
			//return linearGradientTwoColor(0x990000,0xEE0000);
			return linearGradientColor(ColorHelper.red);
		}
		
		public static function get greenLinearGradient():LinearGradient {
			//return linearGradientTwoColor(0x008B00,0x00FF00);
			return linearGradientColor(ColorHelper.green);
		}
		
		public static function get blueLinearGradient():LinearGradient {
			//return linearGradientTwoColor(0x0066FF,0x00CCFF);
			return linearGradientColor(ColorHelper.blue);
		}
		
		public static function get yellowLinearGradient():LinearGradient {
			//return linearGradientTwoColor(0xCAC333,0xFFFF00);
			return linearGradientColor(ColorHelper.yellow);
		}
		
		public static function get orangeLinearGradient():LinearGradient {
			//return linearGradientTwoColor(0xECA201,0xFFFF00);
			return linearGradientColor(ColorHelper.orange);
		}
		
		//---
		
		public static function get orangeBarFill():LinearGradient {
			//return linearGradientTwoColor(0xFFB900,0xFFD512, 90);
			return linearGradientColor(0xe48701, 90);
		}
		
		//---
		
		public static function get defaultFills():Array {
			var arr:Array = [];
			
			var defColors:Array = ColorHelper.DEFAULT_FLEX_SERIES_COLORS;
			for( var i:int = 0; i < defColors.length; i++ ) {
				arr.push(linearGradientColor(defColors[i]));
			}
			
			return arr;
		} 
		
		public static function get default90DegreeFills():Array {
			var arr:Array = [];
			
			var defColors:Array = ColorHelper.DEFAULT_FLEX_SERIES_COLORS;
			for( var i:int = 0; i < defColors.length; i++ ) {
				arr.push(linearGradientColor(defColors[i],90));
			}
			
			return arr;
		}
		
		// @END: LinearGradient color
		//----------------------------------------------------------------------


	}
}