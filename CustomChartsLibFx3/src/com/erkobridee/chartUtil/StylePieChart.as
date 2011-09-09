/*
	Erko Bridee
	
	Classe de estilização para gráficos de pizza
*/
package com.erkobridee.chartUtil
{
	import mx.graphics.GradientEntry;
	import mx.graphics.RadialGradient;
	import mx.utils.ColorUtil;
	
	[Bindable]
	public class StylePieChart
	{
		public function StylePieChart() {}

		//----------------------------------------------------------------------
		
		public static function radialGradientTwoColor(colorBegin:uint, colorEnd:uint):RadialGradient{
			var fill:RadialGradient = new RadialGradient();			
			var g1:GradientEntry = new GradientEntry(colorBegin);
			var g2:GradientEntry = new GradientEntry(colorEnd);
			fill.entries = [g1,g2];
			return fill;
		}
		
		
		public static function radialGradientColor(colorDef:uint):RadialGradient{
			var fill:RadialGradient = new RadialGradient();	
			
			var colorLight:uint = ColorUtil.adjustBrightness(colorDef,25);
			var colorDark:uint = ColorUtil.adjustBrightness(colorDef,-35);
			
			var g1:GradientEntry = new GradientEntry(colorLight);
			var g2:GradientEntry = new GradientEntry(colorDark);
			
			fill.entries = [g1,g2];
			return fill;
		}

		//----------------------------------------------------------------------
		
		public static function get greenRedFills():Array {
			var gradients:Array = new Array();
			
			/*
			gradients.push(radialGradientTwoColor(0x30BB32, 0x009900)); // green
			gradients.push(radialGradientTwoColor(0xCC3640, 0x990000)); // red
			*/
			gradients.push(radialGradientColor(0x30BB32)); // green
			gradients.push(radialGradientColor(0xCC3640)); // red
			
			return gradients;
		}	
		
		/**
		 * 4 colors
		 */
		public static function get temperatureFills():Array {
			var gradients:Array = new Array();
			
			var low:uint = 0x32CD32; // green
			var middle:uint = 0xFFFF00; // yellow
			var high:uint = 0xECA201; // orange
			var super_high:uint = 0xFF0000; // red
			
			gradients.push(radialGradientColor(super_high));
			gradients.push(radialGradientColor(high));
			gradients.push(radialGradientColor(middle));
			gradients.push(radialGradientColor(low));
			
			return gradients;
		}
		
		public static function get defaultFills():Array {
			var arr:Array = [];
			
			var defColors:Array = ColorHelper.DEFAULT_FLEX_SERIES_COLORS;
			for( var i:int = 0; i < defColors.length; i++ ) {
				arr.push(radialGradientColor(defColors[i]));
			}
			
			return arr;
		} 
		
		//----------------------------------------------------------------------

	}
}