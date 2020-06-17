
/**
 * Named API Resource
 * name is the name
 * url refers to a link to another resource
 */

typedef Url = {
  url:String
}

typedef NameUrl = {
  name:String, 
  url:String
}

typedef Description = {
  description:String,
  language:NameUrl
}

typedef LangNames = {
   name:String,
   language:NameUrl
}

typedef PokemonEntry = {
  entry_number:Int,
  pokemon_species:NameUrl
}

typedef Effect = {
  effect:String,
  language:LangNames
}

typedef FlavorText = {
  flavor_text:String,
  language:LangNames
}

typedef Berry = {
  id:Int,
  name:String,
  growth_time:Int,
  max_harvest:Int,
  natural_gift_power:Int,
  size:Int,
  smoothness:Int,
  soil_dryness:Int,
  firmness: NameUrl,
  flavors:Array<{
    potency:Int,
    flavor: NameUrl, 
  }>,
  item: NameUrl,
  natural_gift_type:NameUrl,
}

typedef BerryFirmness = {
  id:Int,
  name:String,
  berries:Array<NameUrl>,
  names:Array<LangNames>
}

typedef BerryFlavor = {
  id:Int,
  name:String,
  berries:Array<{
    potency:Int,
    berry:NameUrl,
  }>,
  contest_type:NameUrl,
  names:Array<LangNames>
}

typedef Contest = {
  id:Int,
  name:String,
  berry_flavor:NameUrl,
  names:Array<{
    name:String,
    color:String,
    language:NameUrl
  }>
}

typedef ContestEffects = {
  id:Int,
  appeal:Int,
  jam:Int,
  effect_entries:Array<Effect>,
  flavor_text_entries:Array<FlavorText>
}

typedef SuperContestEffects = {
  id:Int,
  appeal:Int,
  flavor_text_entries:Array<FlavorText>,
  moves:Array<NameUrl>
}

typedef Encounter = {
  id:Int,
  name:String,
  order:Int,
  names:Array<LangNames>
}

typedef EncounterConditions = {
  id:Int,
  name:String,
  values:Array<NameUrl>,
  names:Array<LangNames>
}

typedef EncounterConditionValues = {
  id:Int,
  name:String,
  condition:NameUrl,
  names:Array<LangNames>
}


typedef ChainLink = {
  is_baby:Bool,
  species:NameUrl,
  evolution_details:Array<EvolutionDetails>,
  evolves_to:Array<ChainLink>
}

typedef EvolutionDetails = {
  item:NameUrl,
  trigger:NameUrl,
  gender:Int,
  held_item:NameUrl,
  known_move:NameUrl,
  min_level:Int,
  min_happiness:Int,
  min_beauty:Int,
  min_affection:Int,
  needs_overworld_rain:Bool,
  time_of_day:String,
  /**
   * 1  = Attack > Defense
   * 0 = Attack == Defense
   * -1 = Attack < Defense
   */
  relative_physical_stats:Int, 
  turn_upside_down:Bool
}

typedef EvolutionChains = {
  id:Int,
  baby_trigger_item:String,
  chain:ChainLink 
}

typedef EvolutionTrigger = {
  id:Int,
  name:String,
  names:Array<LangNames>,
  pokemon_species:Array<NameUrl>
}

typedef Generation = {
  id:Int,
  name:String,
  abilities:Array<NameUrl>,
  names:Array<LangNames>,
  main_region:NameUrl,
  moves:Array<NameUrl>,
  pokemon_species:Array<NameUrl>,
  types:Array<NameUrl>,
  version_groups:Array<NameUrl>
}

typedef PokedexT = {
  id:Int,
  name:String,
  is_main_series:Bool,
  description: Description,
  names:Array<LangNames>,
  pokemon_entries:Array<PokemonEntry>,
  region:NameUrl,
  version_groups:Array<NameUrl>
}

typedef Version = {
  id:Int,
  name:String,
  names:Array<LangNames>,
  version_group:Array<NameUrl>
}

typedef VersionGroup = {
  id:Int,
  name:String,
  order:Int,
  generation:NameUrl,
  move_learn_methods:Array<NameUrl>,
  pokedexes:Array<NameUrl>,
  regions:Array<NameUrl>,
  versions:Array<NameUrl>
}

typedef VersionGroupFlavorText = {
  text:String,
  version_group:NameUrl,
  language:NameUrl,
  
}

typedef MachineVersionDetail = {
  machine:Url,
  version_group:NameUrl
}

typedef Item = {
  id:Int,
  name:String,
  cost:Int,
  fling_power:Int,
  fling_effect:NameUrl,
  attributes:Array<NameUrl>,
  category:NameUrl,
  effect_entries:Array<{
    effect:String,
    short_effect:String,
    language:NameUrl
  }>,
  flavor_text_entries:Array<VersionGroupFlavorText>,
  game_indices:Array<{
    game_index:Int,
    generation:NameUrl
  }>,
  names:Array<LangNames>,
  sprites: {
    default_:String
  },
  held_by_pokemon:Array<{
    pokemon:NameUrl,
    version_details:Array<{
      rarity:Int,
      version:NameUrl
    }>
  }>,
  baby_trigger_for: Url,
  machines:Array<MachineVersionDetail>
}

typedef ItemAttributes = {
  id:Int,
  name:String,
  description:Array<Description>,
  items:Array<NameUrl>,
  names:Array<LangNames>
}

typedef ItemCategory = {
  id:Int,
  name:String,
  items:Array<NameUrl>,
  names:Array<LangNames>,
  pocket:NameUrl
}

typedef ItemFlingEffect = {
  id:Int,
  name:String,
  effect_entries:Array<Effect>,
  items:Array<NameUrl>
}

typedef ItemPocket = {
  id:Int,
  name:String,
  categories:Array<NameUrl>,
  names:Array<LangNames>
}

typedef Machine = {
  id:Int,
  item:NameUrl,
  move:NameUrl,
  version_group:NameUrl
}