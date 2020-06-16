import js.lib.Promise;

typedef APIOptions = {
  protocol:String,
  hostName:String,
  versionPath:String,
  cacheLimit:Int,
  timeout:Int
}
 
extern class Pokedex {
  public function new(?options:APIOptions):Void;
  public function getBerryByName(berryName:String) : Promise<String>;
  public function getBerryFirmnessByName(firmness:String) : Promise<String>;
}