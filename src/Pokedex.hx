import haxe.ds.Either;
import js.lib.Promise;
import DataStructures;
import haxe.extern.Rest;
import haxe.extern.EitherType;

typedef EitherT<T1, T2> = EitherType<T1, T2>;
//EitherT<String, Array<Dynamic>>;

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
  public function getBerryByName(val: EitherT<String, Array<Dynamic>>) : Promise<EitherT<Berry, Array<Berry>>>;
  public function getBerryFirmnessByName(firmness:EitherT<String, Array<Dynamic>>) : Promise<EitherT<BerryFirmness, Array<BerryFirmness>>>;
  public function getBerryFlavorByName(flavor:EitherT<String, Array<Dynamic>>) : Promise<EitherT<BerryFlavor, Array<BerryFlavor>>>;
  public function getContestTypeByName(contestName:EitherT<String, Array<Dynamic>>) : Promise<EitherT<Contest, Array<Contest>>>;
  public function getSuperContestEffectById(id:Int) : Promise<EitherT<SuperContestEffects,Array<SuperContestEffects>>>;
  public function getEncounterMethodByName(encounterMethod:EitherT<String, Array<Dynamic>>) : Promise<EitherT<Encounter, Array<Encounter>>>;
  public function getEncounterConditionByName(encounterCondName:EitherT<String, Array<Dynamic>>) : Promise<EitherT<EncounterConditions, Array<EncounterConditions>>>;
  public function getEncounterConditionValueByName(encounterCondValue:EitherT<String, Array<Dynamic>>) : Promise<EitherT<EncounterConditionValues, Array<EncounterConditionValues>>>;
  public function getEvolutionChainById(id:Int) : Promise<EvolutionChains>;
  public function getEvolutionTriggerByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<EvolutionTrigger, Array<EvolutionTrigger>>>;
  public function getGenerationByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<Generation, Array<Generation>>>;
  public function getPokedexByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<PokedexT, Array<PokedexT>>>;
  public function getVersionByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<Version, Array<Version>>>;
  public function getVersionGroupyByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<VersionGroup, Array<VersionGroup>>>;
  public function getItemByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<Item, Array<Item>>>;
  public function getItemAttributesByName(name: EitherT<String, Array<Dynamic>>) : Promise<EitherT<ItemAttributes, Array<ItemAttributes>>>;
  public function getItemCategoryByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<ItemCategory, Array<ItemCategory>>>;
  public function getItemFlingEffectByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<ItemFlingEffect, Array<ItemFlingEffect>>>;
  public function getItemPocketByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<ItemPocket, Array<ItemPocket>>>;
  public function getMachineById(id:Int) : Promise<EitherT<Machine, Array<Machine>>>;
}