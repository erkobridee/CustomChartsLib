/*
	Erko Bridee

	Classe de estilização visual para gráficos de areas
*/
package com.erkobridee.chartUtil
{
	import mx.graphics.GradientEntry;
	import mx.graphics.LinearGradient;
	import mx.utils.ColorUtil;
	
	
	[Bindable]
	public class StyleAreaChart
	{
		public function StyleAreaChart() {}

		//----------------------------------------------------------------------
		
		/**
		 * gera um efeito degrade a partir de uma cor informada, alterando o
		 * respectivo brilho da cor, também possibilita indicar o angulo do
		 * degrade gerado
		 */
		public static function linearGradientColor(colorDef:uint, angle:Number=90):LinearGradient {
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
		
		/**
		 * gera um efeito degrade a partir de 2 cores informadas, além 
		 * de possibilitar a definição do angulo do degrade
		 */
		public static function linearGradientTwoColor(colorBegin:uint, colorEnd:uint, angle:Number=90):LinearGradient {
			var linearGradient:LinearGradient = new LinearGradient();
			var arr:Array = [];
			
			arr.push(new GradientEntry(colorBegin, 0.0, 0.8));
			arr.push(new GradientEntry(colorEnd, 0.8, 0.7));
			
			if(angle > 0) {
				linearGradient.rotation = angle;
			} 
			
			linearGradient.entries = arr;
			return linearGradient;
		}	
		
		//----------------------------------------------------------------------
		
		public static function get defaultFills():Array {
			var arr:Array = [];
			
			var defColors:Array = ColorHelper.DEFAULT_FLEX_SERIES_COLORS;
			for( var i:int = 0; i < defColors.length; i++ ) {
				arr.push(linearGradientColor(defColors[i]));
			}
			
			return arr;
		}
		
		//----------------------------------------------------------------------
		
	}
}