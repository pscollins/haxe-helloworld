package lime;


import lime.utils.Assets;


class AssetData {

	private static var initialized:Bool = false;
	
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var path = new #if haxe3 Map <String, #else Hash <#end String> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();	
	
	public static function initialize():Void {
		
		if (!initialized) {
			
			path.set ("assets/images/b1pr.png", "assets/images/b1pr.png");
			type.set ("assets/images/b1pr.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/b2fv.png", "assets/images/b2fv.png");
			type.set ("assets/images/b2fv.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/hj.png", "assets/images/hj.png");
			type.set ("assets/images/hj.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/jr.png", "assets/images/jr.png");
			type.set ("assets/images/jr.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/cards_png.zip", "assets/images/cards_png.zip");
			type.set ("assets/images/cards_png.zip", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/images/s3.png", "assets/images/s3.png");
			type.set ("assets/images/s3.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/d5.png", "assets/images/d5.png");
			type.set ("assets/images/d5.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/h5.png", "assets/images/h5.png");
			type.set ("assets/images/h5.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/b1pb.png", "assets/images/b1pb.png");
			type.set ("assets/images/b1pb.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/b1pl.png", "assets/images/b1pl.png");
			type.set ("assets/images/b1pl.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/h9.png", "assets/images/h9.png");
			type.set ("assets/images/h9.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/d3.png", "assets/images/d3.png");
			type.set ("assets/images/d3.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/b1fv.png", "assets/images/b1fv.png");
			type.set ("assets/images/b1fv.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/h6.png", "assets/images/h6.png");
			type.set ("assets/images/h6.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/h8.png", "assets/images/h8.png");
			type.set ("assets/images/h8.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/h10.png", "assets/images/h10.png");
			type.set ("assets/images/h10.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/s6.png", "assets/images/s6.png");
			type.set ("assets/images/s6.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/s7.png", "assets/images/s7.png");
			type.set ("assets/images/s7.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/c3.png", "assets/images/c3.png");
			type.set ("assets/images/c3.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/h2.png", "assets/images/h2.png");
			type.set ("assets/images/h2.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/s9.png", "assets/images/s9.png");
			type.set ("assets/images/s9.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/c2.png", "assets/images/c2.png");
			type.set ("assets/images/c2.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/jb.png", "assets/images/jb.png");
			type.set ("assets/images/jb.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/index.html", "assets/images/index.html");
			type.set ("assets/images/index.html", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/hq.png", "assets/images/hq.png");
			type.set ("assets/images/hq.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/c6.png", "assets/images/c6.png");
			type.set ("assets/images/c6.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/c10.png", "assets/images/c10.png");
			type.set ("assets/images/c10.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/c5.png", "assets/images/c5.png");
			type.set ("assets/images/c5.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/h4.png", "assets/images/h4.png");
			type.set ("assets/images/h4.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/d7.png", "assets/images/d7.png");
			type.set ("assets/images/d7.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/dk.png", "assets/images/dk.png");
			type.set ("assets/images/dk.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/cq.png", "assets/images/cq.png");
			type.set ("assets/images/cq.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/b1fh.png", "assets/images/b1fh.png");
			type.set ("assets/images/b1fh.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/c8.png", "assets/images/c8.png");
			type.set ("assets/images/c8.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/h1.png", "assets/images/h1.png");
			type.set ("assets/images/h1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/b2pr.png", "assets/images/b2pr.png");
			type.set ("assets/images/b2pr.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/b2pb.png", "assets/images/b2pb.png");
			type.set ("assets/images/b2pb.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/dj.png", "assets/images/dj.png");
			type.set ("assets/images/dj.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/hk.png", "assets/images/hk.png");
			type.set ("assets/images/hk.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/s2.png", "assets/images/s2.png");
			type.set ("assets/images/s2.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/c7.png", "assets/images/c7.png");
			type.set ("assets/images/c7.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/d1.png", "assets/images/d1.png");
			type.set ("assets/images/d1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/s4.png", "assets/images/s4.png");
			type.set ("assets/images/s4.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/sj.png", "assets/images/sj.png");
			type.set ("assets/images/sj.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/sq.png", "assets/images/sq.png");
			type.set ("assets/images/sq.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/s1.png", "assets/images/s1.png");
			type.set ("assets/images/s1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/b2pt.png", "assets/images/b2pt.png");
			type.set ("assets/images/b2pt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/d4.png", "assets/images/d4.png");
			type.set ("assets/images/d4.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/images-go-here.txt", "assets/images/images-go-here.txt");
			type.set ("assets/images/images-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/ec.png", "assets/images/ec.png");
			type.set ("assets/images/ec.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/h3.png", "assets/images/h3.png");
			type.set ("assets/images/h3.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/d10.png", "assets/images/d10.png");
			type.set ("assets/images/d10.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/s5.png", "assets/images/s5.png");
			type.set ("assets/images/s5.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/c9.png", "assets/images/c9.png");
			type.set ("assets/images/c9.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/h7.png", "assets/images/h7.png");
			type.set ("assets/images/h7.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/c4.png", "assets/images/c4.png");
			type.set ("assets/images/c4.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/d8.png", "assets/images/d8.png");
			type.set ("assets/images/d8.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/c1.png", "assets/images/c1.png");
			type.set ("assets/images/c1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/b2fh.png", "assets/images/b2fh.png");
			type.set ("assets/images/b2fh.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/s10.png", "assets/images/s10.png");
			type.set ("assets/images/s10.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/cj.png", "assets/images/cj.png");
			type.set ("assets/images/cj.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/d2.png", "assets/images/d2.png");
			type.set ("assets/images/d2.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/s8.png", "assets/images/s8.png");
			type.set ("assets/images/s8.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/dq.png", "assets/images/dq.png");
			type.set ("assets/images/dq.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/ck.png", "assets/images/ck.png");
			type.set ("assets/images/ck.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/d6.png", "assets/images/d6.png");
			type.set ("assets/images/d6.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/b2pl.png", "assets/images/b2pl.png");
			type.set ("assets/images/b2pl.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/d9.png", "assets/images/d9.png");
			type.set ("assets/images/d9.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/b1pt.png", "assets/images/b1pt.png");
			type.set ("assets/images/b1pt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/sk.png", "assets/images/sk.png");
			type.set ("assets/images/sk.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/data-goes-here.txt", "assets/data/data-goes-here.txt");
			type.set ("assets/data/data-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/music/music-goes-here.txt", "assets/music/music-goes-here.txt");
			type.set ("assets/music/music-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/sounds/sounds-go-here.txt", "assets/sounds/sounds-go-here.txt");
			type.set ("assets/sounds/sounds-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/sounds/beep.ogg", "assets/sounds/beep.ogg");
			type.set ("assets/sounds/beep.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/flixel.ogg", "assets/sounds/flixel.ogg");
			type.set ("assets/sounds/flixel.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			
			
			initialized = true;
			
		} //!initialized
		
	} //initialize
	
	
} //AssetData
