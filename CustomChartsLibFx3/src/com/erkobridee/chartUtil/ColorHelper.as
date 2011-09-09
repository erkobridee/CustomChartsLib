/*
	Erko Bridee
	
	base colors
*/
package com.erkobridee.chartUtil
{
	import mx.graphics.SolidColor;
	import mx.graphics.Stroke;
	
	[Bindable]
	public class ColorHelper
	{
		//----------------------------------------------------------------------
		
		public function ColorHelper() {}

		//----------------------------------------------------------------------

		public static const DEFAULT_FLEX_SERIES_COLORS:Array = [
            0xe48701, 0xa5bc4e, 0x1b95d9, 0xcaca9e,
            0x6693b0, 0xf05e27, 0x86d1e4, 0xe4f9a0,
            0xffd512, 0x75b000, 0x0662b0, 0xede8c6,
            0xcc3300, 0xd1dfe7, 0x52d4ca, 0xc5e05d,
            0xe7c174, 0xfff797, 0xc5f68f, 0xbdf1e6,
            0x9e987d, 0xeb988d, 0x91c9e5, 0x93dc4a,
            0xffb900, 0x9ebbcd, 0x009797, 0x0db2c2
        ];

		//----------------------------------------------------------------------
		
		public static function rgbToHex(value:uint):String 
		{
            var str:String = value.toString(16).toUpperCase();
            str = String("000000" + str).substr(-6);
            return str;
        }
		
		public static function get randomColor():uint 
		{
			return Math.random()*0xFFFFFF;
		}
		
		//----------------------------------------------------------------------
		// basic colors
		
		public static const red:uint = 0x990000;
		public static const green:uint = 0x008B00;
		public static const blue:uint = 0x1b95d9; //0x0066FF;
		public static const yellow:uint = 0xCAC333;
		public static const orange:uint = 0xe48701; //0xECA201;
		
		//----------------------------------------------------------------------
		
		public static function strokeColor(color:uint):Stroke 
		{
			return new Stroke(color,1);
		}

		//----------------------------------------------------------------------
		
		public static function get redStroke():Stroke {
			return strokeColor(red);
		}
		
		public static function get greenStroke():Stroke {
			return strokeColor(green);
		}
		
		public static function get blueStroke():Stroke {
			return strokeColor(blue);
		}
		
		public static function get yellowStroke():Stroke {
			return strokeColor(yellow);
		}
		
		public static function get orangeStroke():Stroke {
			return strokeColor(orange);
		}

	}
}