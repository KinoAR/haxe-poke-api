import js.lib.Promise;
import DataStructures;

typedef APIOptions = {
  protocol:String,
  hostName:String,
  versionPath:String,
  cacheLimit:Int,
  timeout:Int
}

@:jsRequire("pokedex-promise-v2") 
extern class Pokedex {
  public function new(?options:APIOptions):Void;
  public function getBerryByName(berryName:String) : Promise<Berry>;
  public function getBerryFirmnessByName(firmness:String) : Promise<BerryFirmness>;
  public function getBerryFlavorByName(flavor:String) : Promise<BerryFlavor>;
  public function getContestTypeByName(contestName:String) : Promise<Contest>;
}