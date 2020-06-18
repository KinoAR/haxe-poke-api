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
  public function getMoveByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<Move, Array<Move>>>;
  public function getMoveAilmentByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<MoveAilment, Array<MoveAilment>>>;
  public function getMoveBattleStyleByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<MoveStyle, Array<MoveStyle>>>;
  public function getMoveCategoryByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<MoveCategory, Array<MoveCategory>>>;
  public function getMoveDamageClassByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<MoveDamage, Array<MoveDamage>>>;
  public function getMoveLearnMethodByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<MoveLearnMethod, Array<MoveLearnMethod>>>;
  public function getMoveTargetByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<MoveTarget, Array<MoveTarget>>>;
  public function getLocationByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<Location, Array<Location>>>;
  public function getLocationAreaByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<LocationArea, Array<LocationArea>>>;
  public function getPalParkAreaByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<PalParkArea, Array<PalParkArea>>>;
  public function getRegionByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<Region, Array<Region>>>;
  public function getAbilityByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<Ability, Array<Ability>>>;
  public function getCharacteristicById(id:EitherT<Int, Array<Int>>) : Promise<EitherT<Characteristic, Array<Characteristic>>>;
  public function getEggGroupByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<EggGroup, Array<EggGroup>>>;
  public function getGenderByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<Gender, Array<Gender>>>;
  public function getGrowthRateByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<GrowthRate, Array<GrowthRate>>>;
  public function getNatureByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<Nature, Array<Nature>>>;
  public function getPokeathlonStatByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<PokeathlonStat, Array<PokeathlonStat>>>;
  public function getPokemonByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<Pokemon, Array<Pokemon>>>;
  public function getPokemonHabitatByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<PokemonHabitat, Array<PokemonHabitat>>>;
  public function getPokemonShapeByName(name:EitherT<String, Array<Dynamic>>) :Promise<EitherT<PokemonShape, Array<PokemonShape>>>;
  public function getPokemonSpeciesByName(name:EitherT<String, Array<Dynamic>>) :Promise<EitherT<PokemonSpecies, Array<PokemonSpecies>>>;
  public function getStatByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<PokemonStat, Array<PokemonStat>>>;
  public function getTypeByName(name:EitherT<String, Array<Dynamic>>) :Promise<EitherT<PokemonType, Array<PokemonType>>>;
  public function getLanguageByName(name:EitherT<String, Array<Dynamic>>) : Promise<EitherT<Language, Array<Language>>>;

  //No Root End Points
}