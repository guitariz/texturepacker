package dataload
{
	import flash.display.BitmapData;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	
	import mx.graphics.codec.PNGEncoder;

	public class PackageSaver
	{
		//---------------------------------------------------------------
		//
		// Variables
		//
		//---------------------------------------------------------------
		
		//---------------------------------------------------------------
		//
		// Logic
		//
		//---------------------------------------------------------------
		
		public static function saveAtlas(name:String, path:String, atlas:BitmapData, xml:String):void
		{
			var fs : FileStream = new FileStream();
			var targetFile : File = new File(path + '\\OUT\\' + name + '.png');
			fs.open(targetFile, FileMode.WRITE);
			fs.writeBytes(new PNGEncoder().encode(atlas));
			fs.close();
			
			
			fs = new FileStream();
			targetFile = new File(path + '\\OUT\\' + name + '.xml');
			fs.open(targetFile, FileMode.WRITE);
			fs.writeUTFBytes(xml);
			fs.close();
		}
		
		//---------------------------------------------------------------
		//
		// Handlers
		//
		//---------------------------------------------------------------
	}
}