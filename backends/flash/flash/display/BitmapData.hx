package flash.display;

/*
 It was not possible to override flash.Vector with a smarter abstract type, since this is 
 baked into genswf9.ml. Instead, we'll set classes that use flash.Vector to reference
 openfl.Vector instead.
*/

extern class BitmapData implements IBitmapDrawable {
	var height(default,null) : Int;
	var rect(default,null) : flash.geom.Rectangle;
	var transparent(default,null) : Bool;
	var width(default,null) : Int;
	function new(width : Int, height : Int, transparent : Bool = true, fillColor : UInt = 0xFFFFFFFF) : Void;
	function applyFilter(sourceBitmapData : BitmapData, sourceRect : flash.geom.Rectangle, destPoint : flash.geom.Point, filter : flash.filters.BitmapFilter) : Void;
	function clone() : BitmapData;
	function colorTransform(rect : flash.geom.Rectangle, colorTransform : flash.geom.ColorTransform) : Void;
	function compare(otherBitmapData : BitmapData) : flash.utils.Object;
	function copyChannel(sourceBitmapData : BitmapData, sourceRect : flash.geom.Rectangle, destPoint : flash.geom.Point, sourceChannel : UInt, destChannel : UInt) : Void;
	function copyPixels(sourceBitmapData : BitmapData, sourceRect : flash.geom.Rectangle, destPoint : flash.geom.Point, ?alphaBitmapData : BitmapData, ?alphaPoint : flash.geom.Point, mergeAlpha : Bool = false) : Void;
	@:require(flash11_4) function copyPixelsToByteArray(rect : flash.geom.Rectangle, data : flash.utils.ByteArray) : Void;
	function dispose() : Void;
	function draw(source : IBitmapDrawable, ?matrix : flash.geom.Matrix, ?colorTransform : flash.geom.ColorTransform, ?blendMode : BlendMode, ?clipRect : flash.geom.Rectangle, smoothing : Bool = false) : Void;
	@:require(flash11_3) function drawWithQuality(source : IBitmapDrawable, ?matrix : flash.geom.Matrix, ?colorTransform : flash.geom.ColorTransform, ?blendMode : BlendMode, ?clipRect : flash.geom.Rectangle, smoothing : Bool = false, ?quality : StageQuality) : Void;
	@:require(flash11_3) function encode(rect : flash.geom.Rectangle, compressor : flash.utils.Object, ?byteArray : flash.utils.ByteArray) : flash.utils.ByteArray;
	function fillRect(rect : flash.geom.Rectangle, color : UInt) : Void;
	function floodFill(x : Int, y : Int, color : UInt) : Void;
	function generateFilterRect(sourceRect : flash.geom.Rectangle, filter : flash.filters.BitmapFilter) : flash.geom.Rectangle;
	function getColorBoundsRect(mask : UInt, color : UInt, findColor : Bool = true) : flash.geom.Rectangle;
	function getPixel(x : Int, y : Int) : UInt;
	function getPixel32(x : Int, y : Int) : UInt;
	function getPixels(rect : flash.geom.Rectangle) : flash.utils.ByteArray;
	@:require(flash10) function getVector(rect : flash.geom.Rectangle) : openfl.Vector<UInt>;
	@:require(flash10) function histogram(?hRect : flash.geom.Rectangle) : openfl.Vector<openfl.Vector<Float>>;
	function hitTest(firstPoint : flash.geom.Point, firstAlphaThreshold : UInt, secondObject : flash.utils.Object, ?secondBitmapDataPoint : flash.geom.Point, secondAlphaThreshold : UInt = 1) : Bool;
	function lock() : Void;
	function merge(sourceBitmapData : BitmapData, sourceRect : flash.geom.Rectangle, destPoint : flash.geom.Point, redMultiplier : UInt, greenMultiplier : UInt, blueMultiplier : UInt, alphaMultiplier : UInt) : Void;
	function noise(randomSeed : Int, low : UInt = 0, high : UInt = 255, channelOptions : UInt = 7, grayScale : Bool = false) : Void;
	function paletteMap(sourceBitmapData : BitmapData, sourceRect : flash.geom.Rectangle, destPoint : flash.geom.Point, ?redArray : Array<Int>, ?greenArray : Array<Int>, ?blueArray : Array<Int>, ?alphaArray : Array<Int>) : Void;
	function perlinNoise(baseX : Float, baseY : Float, numOctaves : UInt, randomSeed : Int, stitch : Bool, fractalNoise : Bool, channelOptions : UInt = 7, grayScale : Bool = false, ?offsets : Array<flash.geom.Point>) : Void;
	function pixelDissolve(sourceBitmapData : BitmapData, sourceRect : flash.geom.Rectangle, destPoint : flash.geom.Point, randomSeed : Int = 0, numPixels : Int = 0, fillColor : UInt = 0) : Int;
	function scroll(x : Int, y : Int) : Void;
	function setPixel(x : Int, y : Int, color : UInt) : Void;
	function setPixel32(x : Int, y : Int, color : UInt) : Void;
	function setPixels(rect : flash.geom.Rectangle, inputByteArray : flash.utils.ByteArray) : Void;
	@:require(flash10) function setVector(rect : flash.geom.Rectangle, inputVector : openfl.Vector<UInt>) : Void;
	function threshold(sourceBitmapData : BitmapData, sourceRect : flash.geom.Rectangle, destPoint : flash.geom.Point, operation : String, threshold : UInt, color : UInt = 0, mask : UInt = 0xFFFFFFFF, copySource : Bool = false) : UInt;
	function unlock(?changeRect : flash.geom.Rectangle) : Void;
}