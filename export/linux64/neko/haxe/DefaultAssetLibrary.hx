package;


import haxe.Timer;
import haxe.Unserializer;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.MovieClip;
import openfl.events.Event;
import openfl.text.Font;
import openfl.media.Sound;
import openfl.net.URLRequest;
import openfl.utils.ByteArray;
import openfl.Assets;

#if (flash || js)
import openfl.display.Loader;
import openfl.events.Event;
import openfl.net.URLLoader;
#end

#if sys
import sys.FileSystem;
#end

#if ios
import openfl.utils.SystemPath;
#end


@:access(openfl.media.Sound)
class DefaultAssetLibrary extends AssetLibrary {
	
	
	public var className (default, null) = new Map <String, Dynamic> ();
	public var path (default, null) = new Map <String, String> ();
	public var type (default, null) = new Map <String, AssetType> ();
	
	private var lastModified:Float;
	private var timer:Timer;
	
	
	public function new () {
		
		super ();
		
		#if flash
		
		path.set ("assets/images/b1pr.png", "assets/images/b1pr.png");
		type.set ("assets/images/b1pr.png", AssetType.IMAGE);
		path.set ("assets/images/b2fv.png", "assets/images/b2fv.png");
		type.set ("assets/images/b2fv.png", AssetType.IMAGE);
		path.set ("assets/images/hj.png", "assets/images/hj.png");
		type.set ("assets/images/hj.png", AssetType.IMAGE);
		path.set ("assets/images/jr.png", "assets/images/jr.png");
		type.set ("assets/images/jr.png", AssetType.IMAGE);
		path.set ("assets/images/cards_png.zip", "assets/images/cards_png.zip");
		type.set ("assets/images/cards_png.zip", AssetType.BINARY);
		path.set ("assets/images/s3.png", "assets/images/s3.png");
		type.set ("assets/images/s3.png", AssetType.IMAGE);
		path.set ("assets/images/d5.png", "assets/images/d5.png");
		type.set ("assets/images/d5.png", AssetType.IMAGE);
		path.set ("assets/images/h5.png", "assets/images/h5.png");
		type.set ("assets/images/h5.png", AssetType.IMAGE);
		path.set ("assets/images/b1pb.png", "assets/images/b1pb.png");
		type.set ("assets/images/b1pb.png", AssetType.IMAGE);
		path.set ("assets/images/b1pl.png", "assets/images/b1pl.png");
		type.set ("assets/images/b1pl.png", AssetType.IMAGE);
		path.set ("assets/images/h9.png", "assets/images/h9.png");
		type.set ("assets/images/h9.png", AssetType.IMAGE);
		path.set ("assets/images/d3.png", "assets/images/d3.png");
		type.set ("assets/images/d3.png", AssetType.IMAGE);
		path.set ("assets/images/b1fv.png", "assets/images/b1fv.png");
		type.set ("assets/images/b1fv.png", AssetType.IMAGE);
		path.set ("assets/images/h6.png", "assets/images/h6.png");
		type.set ("assets/images/h6.png", AssetType.IMAGE);
		path.set ("assets/images/h8.png", "assets/images/h8.png");
		type.set ("assets/images/h8.png", AssetType.IMAGE);
		path.set ("assets/images/h10.png", "assets/images/h10.png");
		type.set ("assets/images/h10.png", AssetType.IMAGE);
		path.set ("assets/images/s6.png", "assets/images/s6.png");
		type.set ("assets/images/s6.png", AssetType.IMAGE);
		path.set ("assets/images/s7.png", "assets/images/s7.png");
		type.set ("assets/images/s7.png", AssetType.IMAGE);
		path.set ("assets/images/c3.png", "assets/images/c3.png");
		type.set ("assets/images/c3.png", AssetType.IMAGE);
		path.set ("assets/images/h2.png", "assets/images/h2.png");
		type.set ("assets/images/h2.png", AssetType.IMAGE);
		path.set ("assets/images/s9.png", "assets/images/s9.png");
		type.set ("assets/images/s9.png", AssetType.IMAGE);
		path.set ("assets/images/c2.png", "assets/images/c2.png");
		type.set ("assets/images/c2.png", AssetType.IMAGE);
		path.set ("assets/images/jb.png", "assets/images/jb.png");
		type.set ("assets/images/jb.png", AssetType.IMAGE);
		path.set ("assets/images/index.html", "assets/images/index.html");
		type.set ("assets/images/index.html", AssetType.TEXT);
		path.set ("assets/images/hq.png", "assets/images/hq.png");
		type.set ("assets/images/hq.png", AssetType.IMAGE);
		path.set ("assets/images/c6.png", "assets/images/c6.png");
		type.set ("assets/images/c6.png", AssetType.IMAGE);
		path.set ("assets/images/c10.png", "assets/images/c10.png");
		type.set ("assets/images/c10.png", AssetType.IMAGE);
		path.set ("assets/images/c5.png", "assets/images/c5.png");
		type.set ("assets/images/c5.png", AssetType.IMAGE);
		path.set ("assets/images/h4.png", "assets/images/h4.png");
		type.set ("assets/images/h4.png", AssetType.IMAGE);
		path.set ("assets/images/d7.png", "assets/images/d7.png");
		type.set ("assets/images/d7.png", AssetType.IMAGE);
		path.set ("assets/images/dk.png", "assets/images/dk.png");
		type.set ("assets/images/dk.png", AssetType.IMAGE);
		path.set ("assets/images/cq.png", "assets/images/cq.png");
		type.set ("assets/images/cq.png", AssetType.IMAGE);
		path.set ("assets/images/b1fh.png", "assets/images/b1fh.png");
		type.set ("assets/images/b1fh.png", AssetType.IMAGE);
		path.set ("assets/images/c8.png", "assets/images/c8.png");
		type.set ("assets/images/c8.png", AssetType.IMAGE);
		path.set ("assets/images/h1.png", "assets/images/h1.png");
		type.set ("assets/images/h1.png", AssetType.IMAGE);
		path.set ("assets/images/b2pr.png", "assets/images/b2pr.png");
		type.set ("assets/images/b2pr.png", AssetType.IMAGE);
		path.set ("assets/images/b2pb.png", "assets/images/b2pb.png");
		type.set ("assets/images/b2pb.png", AssetType.IMAGE);
		path.set ("assets/images/dj.png", "assets/images/dj.png");
		type.set ("assets/images/dj.png", AssetType.IMAGE);
		path.set ("assets/images/hk.png", "assets/images/hk.png");
		type.set ("assets/images/hk.png", AssetType.IMAGE);
		path.set ("assets/images/s2.png", "assets/images/s2.png");
		type.set ("assets/images/s2.png", AssetType.IMAGE);
		path.set ("assets/images/c7.png", "assets/images/c7.png");
		type.set ("assets/images/c7.png", AssetType.IMAGE);
		path.set ("assets/images/d1.png", "assets/images/d1.png");
		type.set ("assets/images/d1.png", AssetType.IMAGE);
		path.set ("assets/images/s4.png", "assets/images/s4.png");
		type.set ("assets/images/s4.png", AssetType.IMAGE);
		path.set ("assets/images/sj.png", "assets/images/sj.png");
		type.set ("assets/images/sj.png", AssetType.IMAGE);
		path.set ("assets/images/sq.png", "assets/images/sq.png");
		type.set ("assets/images/sq.png", AssetType.IMAGE);
		path.set ("assets/images/s1.png", "assets/images/s1.png");
		type.set ("assets/images/s1.png", AssetType.IMAGE);
		path.set ("assets/images/b2pt.png", "assets/images/b2pt.png");
		type.set ("assets/images/b2pt.png", AssetType.IMAGE);
		path.set ("assets/images/d4.png", "assets/images/d4.png");
		type.set ("assets/images/d4.png", AssetType.IMAGE);
		path.set ("assets/images/images-go-here.txt", "assets/images/images-go-here.txt");
		type.set ("assets/images/images-go-here.txt", AssetType.TEXT);
		path.set ("assets/images/ec.png", "assets/images/ec.png");
		type.set ("assets/images/ec.png", AssetType.IMAGE);
		path.set ("assets/images/h3.png", "assets/images/h3.png");
		type.set ("assets/images/h3.png", AssetType.IMAGE);
		path.set ("assets/images/d10.png", "assets/images/d10.png");
		type.set ("assets/images/d10.png", AssetType.IMAGE);
		path.set ("assets/images/s5.png", "assets/images/s5.png");
		type.set ("assets/images/s5.png", AssetType.IMAGE);
		path.set ("assets/images/c9.png", "assets/images/c9.png");
		type.set ("assets/images/c9.png", AssetType.IMAGE);
		path.set ("assets/images/h7.png", "assets/images/h7.png");
		type.set ("assets/images/h7.png", AssetType.IMAGE);
		path.set ("assets/images/c4.png", "assets/images/c4.png");
		type.set ("assets/images/c4.png", AssetType.IMAGE);
		path.set ("assets/images/d8.png", "assets/images/d8.png");
		type.set ("assets/images/d8.png", AssetType.IMAGE);
		path.set ("assets/images/c1.png", "assets/images/c1.png");
		type.set ("assets/images/c1.png", AssetType.IMAGE);
		path.set ("assets/images/b2fh.png", "assets/images/b2fh.png");
		type.set ("assets/images/b2fh.png", AssetType.IMAGE);
		path.set ("assets/images/s10.png", "assets/images/s10.png");
		type.set ("assets/images/s10.png", AssetType.IMAGE);
		path.set ("assets/images/cj.png", "assets/images/cj.png");
		type.set ("assets/images/cj.png", AssetType.IMAGE);
		path.set ("assets/images/d2.png", "assets/images/d2.png");
		type.set ("assets/images/d2.png", AssetType.IMAGE);
		path.set ("assets/images/s8.png", "assets/images/s8.png");
		type.set ("assets/images/s8.png", AssetType.IMAGE);
		path.set ("assets/images/dq.png", "assets/images/dq.png");
		type.set ("assets/images/dq.png", AssetType.IMAGE);
		path.set ("assets/images/ck.png", "assets/images/ck.png");
		type.set ("assets/images/ck.png", AssetType.IMAGE);
		path.set ("assets/images/d6.png", "assets/images/d6.png");
		type.set ("assets/images/d6.png", AssetType.IMAGE);
		path.set ("assets/images/b2pl.png", "assets/images/b2pl.png");
		type.set ("assets/images/b2pl.png", AssetType.IMAGE);
		path.set ("assets/images/d9.png", "assets/images/d9.png");
		type.set ("assets/images/d9.png", AssetType.IMAGE);
		path.set ("assets/images/b1pt.png", "assets/images/b1pt.png");
		type.set ("assets/images/b1pt.png", AssetType.IMAGE);
		path.set ("assets/images/sk.png", "assets/images/sk.png");
		type.set ("assets/images/sk.png", AssetType.IMAGE);
		path.set ("assets/data/data-goes-here.txt", "assets/data/data-goes-here.txt");
		type.set ("assets/data/data-goes-here.txt", AssetType.TEXT);
		path.set ("assets/music/music-goes-here.txt", "assets/music/music-goes-here.txt");
		type.set ("assets/music/music-goes-here.txt", AssetType.TEXT);
		path.set ("assets/sounds/sounds-go-here.txt", "assets/sounds/sounds-go-here.txt");
		type.set ("assets/sounds/sounds-go-here.txt", AssetType.TEXT);
		path.set ("assets/sounds/beep.ogg", "assets/sounds/beep.ogg");
		type.set ("assets/sounds/beep.ogg", AssetType.SOUND);
		path.set ("assets/sounds/flixel.ogg", "assets/sounds/flixel.ogg");
		type.set ("assets/sounds/flixel.ogg", AssetType.SOUND);
		
		
		#elseif html5
		
		var id;
		
		
		#else
		
		#if (windows || mac || linux)
		
		var useManifest = false;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		
		
		if (useManifest) {
			
			loadManifest ();
			
			if (Sys.args ().indexOf ("-livereload") > -1) {
				
				var path = FileSystem.fullPath ("manifest");
				lastModified = FileSystem.stat (path).mtime.getTime ();
				
				timer = new Timer (2000);
				timer.run = function () {
					
					var modified = FileSystem.stat (path).mtime.getTime ();
					
					if (modified > lastModified) {
						
						lastModified = modified;
						loadManifest ();
						
						if (eventCallback != null) {
							
							eventCallback (this, "change");
							
						}
						
					}
					
				}
				
			}
			
		}
		
		#else
		
		loadManifest ();
		
		#end
		#end
		
	}
	
	
	public override function exists (id:String, type:AssetType):Bool {
		
		var assetType = this.type.get (id);
		
		#if pixi
		
		if (assetType == IMAGE) {
			
			return true;
			
		} else {
			
			return false;
			
		}
		
		#end
		
		if (assetType != null) {
			
			if (assetType == type || ((type == SOUND || type == MUSIC) && (assetType == MUSIC || assetType == SOUND))) {
				
				return true;
				
			}
			
			#if flash
			
			if ((assetType == BINARY || assetType == TEXT) && type == BINARY) {
				
				return true;
				
			} else if (path.exists (id)) {
				
				return true;
				
			}
			
			#else
			
			if (type == BINARY || type == null) {
				
				return true;
				
			}
			
			#end
			
		}
		
		return false;
		
	}
	
	
	public override function getBitmapData (id:String):BitmapData {
		
		#if pixi
		
		return BitmapData.fromImage (path.get (id));
		
		#elseif (flash)
		
		return cast (Type.createInstance (className.get (id), []), BitmapData);
		
		#elseif openfl_html5
		
		return BitmapData.fromImage (ApplicationMain.images.get (path.get (id)));
		
		#elseif js
		
		return cast (ApplicationMain.loaders.get (path.get (id)).contentLoaderInfo.content, Bitmap).bitmapData;
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), BitmapData);
		else return BitmapData.load (path.get (id));
		
		#end
		
	}
	
	
	public override function getBytes (id:String):ByteArray {
		
		#if (flash)
		
		return cast (Type.createInstance (className.get (id), []), ByteArray);

		#elseif (js || openfl_html5 || pixi)
		
		var bytes:ByteArray = null;
		var data = ApplicationMain.urlLoaders.get (path.get (id)).data;
		
		if (Std.is (data, String)) {
			
			bytes = new ByteArray ();
			bytes.writeUTFBytes (data);
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}

		if (bytes != null) {
			
			bytes.position = 0;
			return bytes;
			
		} else {
			
			return null;
		}
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), ByteArray);
		else return ByteArray.readFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getFont (id:String):Font {
		
		#if pixi
		
		return null;
		
		#elseif (flash || js)
		
		return cast (Type.createInstance (className.get (id), []), Font);
		
		#else
		
		if (className.exists(id)) {
			var fontClass = className.get(id);
			Font.registerFont(fontClass);
			return cast (Type.createInstance (fontClass, []), Font);
		} else return new Font (path.get (id));
		
		#end
		
	}
	
	
	public override function getMusic (id:String):Sound {
		
		#if pixi
		
		return null;
		
		#elseif (flash)
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif openfl_html5
		
		var sound = new Sound ();
		sound.__buffer = true;
		sound.load (new URLRequest (path.get (id)));
		return sound; 
		
		#elseif js
		
		return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Sound);
		else return new Sound (new URLRequest (path.get (id)), null, true);
		
		#end
		
	}
	
	
	public override function getPath (id:String):String {
		
		#if ios
		
		return SystemPath.applicationDirectory + "/assets/" + path.get (id);
		
		#else
		
		return path.get (id);
		
		#end
		
	}
	
	
	public override function getSound (id:String):Sound {
		
		#if pixi
		
		return null;
		
		#elseif (flash)
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif js
		
		return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Sound);
		else return new Sound (new URLRequest (path.get (id)), null, type.get (id) == MUSIC);
		
		#end
		
	}
	
	
	public override function getText (id:String):String {
		
		#if js
		
		var bytes:ByteArray = null;
		var data = ApplicationMain.urlLoaders.get (path.get (id)).data;
		
		if (Std.is (data, String)) {
			
			return cast data;
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}
		
		if (bytes != null) {
			
			bytes.position = 0;
			return bytes.readUTFBytes (bytes.length);
			
		} else {
			
			return null;
		}
		
		#else
		
		var bytes = getBytes (id);
		
		if (bytes == null) {
			
			return null;
			
		} else {
			
			return bytes.readUTFBytes (bytes.length);
			
		}
		
		#end
		
	}
	
	
	public override function isLocal (id:String, type:AssetType):Bool {
		
		#if flash
		
		if (type != AssetType.MUSIC && type != AssetType.SOUND) {
			
			return className.exists (id);
			
		}
		
		#end
		
		return true;
		
	}
	
	
	public override function list (type:AssetType):Array<String> {
		
		var items = [];
		
		for (id in this.type.keys ()) {
			
			if (type == null || exists (id, type)) {
				
				items.push (id);
				
			}
			
		}
		
		return items;
		
	}
	
	
	public override function loadBitmapData (id:String, handler:BitmapData -> Void):Void {
		
		#if pixi
		
		handler (getBitmapData (id));
		
		#elseif (flash || js)
		
		if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event:Event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getBitmapData (id));
			
		}
		
		#else
		
		handler (getBitmapData (id));
		
		#end
		
	}
	
	
	public override function loadBytes (id:String, handler:ByteArray -> Void):Void {
		
		#if pixi
		
		handler (getBytes (id));
		
		#elseif (flash || js)
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bytes = new ByteArray ();
				bytes.writeUTFBytes (event.currentTarget.data);
				bytes.position = 0;
				
				handler (bytes);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getBytes (id));
			
		}
		
		#else
		
		handler (getBytes (id));
		
		#end
		
	}
	
	
	public override function loadFont (id:String, handler:Font -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getFont (id));
			
		//}
		
		#else
		
		handler (getFont (id));
		
		#end
		
	}
	
	
	#if (!flash && !html5)
	private function loadManifest ():Void {
		
		try {
			
			#if blackberry
			var bytes = ByteArray.readFile ("app/native/manifest");
			#elseif tizen
			var bytes = ByteArray.readFile ("../res/manifest");
			#elseif emscripten
			var bytes = ByteArray.readFile ("assets/manifest");
			#else
			var bytes = ByteArray.readFile ("manifest");
			#end
			
			if (bytes != null) {
				
				bytes.position = 0;
				
				if (bytes.length > 0) {
					
					var data = bytes.readUTFBytes (bytes.length);
					
					if (data != null && data.length > 0) {
						
						var manifest:Array<Dynamic> = Unserializer.run (data);
						
						for (asset in manifest) {
							
							if (!className.exists (asset.id)) {
								
								path.set (asset.id, asset.path);
								type.set (asset.id, Type.createEnum (AssetType, asset.type));
								
							}
							
						}
						
					}
					
				}
				
			} else {
				
				trace ("Warning: Could not load asset manifest (bytes was null)");
				
			}
		
		} catch (e:Dynamic) {
			
			trace ('Warning: Could not load asset manifest (${e})');
			
		}
		
	}
	#end
	
	
	public override function loadMusic (id:String, handler:Sound -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getMusic (id));
			
		//}
		
		#else
		
		handler (getMusic (id));
		
		#end
		
	}
	
	
	public override function loadSound (id:String, handler:Sound -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getSound (id));
			
		//}
		
		#else
		
		handler (getSound (id));
		
		#end
		
	}
	
	
	public override function loadText (id:String, handler:String -> Void):Void {
		
		#if js
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				handler (event.currentTarget.data);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getText (id));
			
		}
		
		#else
		
		var callback = function (bytes:ByteArray):Void {
			
			if (bytes == null) {
				
				handler (null);
				
			} else {
				
				handler (bytes.readUTFBytes (bytes.length));
				
			}
			
		}
		
		loadBytes (id, callback);
		
		#end
		
	}
	
	
}


#if pixi
#elseif flash














































































#elseif html5














































































#elseif (windows || mac || linux)




#end
