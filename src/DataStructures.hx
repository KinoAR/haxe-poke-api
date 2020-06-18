
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

typedef Move = {
  id:Int,
  name:String,
  accuracy:Int,
  effect_chance:Int,
  pp:Int,
  priority:Int,
  power:Int,
  
  contest_type:NameUrl,
  contest_effect:Url,
  generation:NameUrl,
  names:Array<LangNames>,
  super_contest_effect:Url,
  target:NameUrl,
  type: NameUrl,
}

typedef MoveAilment = {
  id:Int,
  name:String,
  moves:Array<NameUrl>,
  names:Array<LangNames>
}

typedef MoveStyle = {
  id:Int,
  name:String,
  names:Array<LangNames>,
}

typedef MoveCategory = {
  id:Int,
  name:String,
  moves:Array<NameUrl>,
  descriptions:Array<Description>
}

typedef MoveDamage = {
  id:Int,
  name:String,
  descriptions:Array<Description>,
  moves:Array<NameUrl>,
  names:Array<LangNames>
}

typedef MoveLearnMethod = {
  id:Int,
  name:String,
  descriptions:Array<Description>,
  names:Array<LangNames>,
  version_groups:Array<NameUrl>
}

typedef MoveTarget = {
  id:Int,
  name:String,
  descriptions:Array<Description>,
  moves:Array<NameUrl>,
  names:Array<LangNames>
}

typedef Location = {
  id:Int,
  name:String,
  region:NameUrl,
  names:Array<LangNames>,
  game_indices:Dynamic,
  areas:Array<NameUrl>
}

typedef LocationArea = {
  id:Int,
  name:String,
  game_index:Int,
  encounter_method_rates:Dynamic,
  location:NameUrl,
  names:Array<LangNames>,
  pokemon_encounters:Array<Dynamic>
}


typedef PalParkArea = {
  id:Int,
  name:String,
  names:Array<LangNames>,
  pokemon_encounters:Array<PalParkEncounterSpecies>
}

typedef PalParkEncounterSpecies = {
  base_score:Int,
  rate:Int,
  pokemon_species:NameUrl
}

typedef Region = {
  id:Int,
  locations:Array<NameUrl>,
  name:String,
  names:Array<LangNames>,
  main_generation:NameUrl,
  pokedex:Array<NameUrl>,
  version_groups:Array<NameUrl>
}

typedef  Ability = {
  id:Int,
  name:String,
  is_main_series:Bool,
  generation:NameUrl,
  names:Array<LangNames>,
  effect_entries:Array<VerboseEffect>,
  effect_changes:Array<AbililtyEffectChange>,
  flavor_text_entries:Array<AbilityFlavorText>,
  pokemon:Array<AbilityPokemon>

}

typedef AbililtyEffectChange = {
  effect_entries:Array<Effect>,
  version_group:NameUrl
}

typedef AbilityFlavorText = {
  flavor_text:String,
  language:NameUrl,
  version_group:NameUrl
}

typedef AbilityPokemon = {
  is_hidden:Bool,
  slot:Int,
  pokemon:NameUrl
}

typedef VerboseEffect = {
  effect:String,
  short_effect:String,
  language:NameUrl
}

typedef VersionEncounterDetail = {
  version:NameUrl,
  max_chance:Int,
  encounter_details:Array<Encounter>
}

typedef VersionGameIndex = {
  game_index:Int,
  version:NameUrl
}

typedef GenerationGameIndex = {
  game_index:Int,
  generation:NameUrl
}

typedef Language = {
  id:Int,
  name:String,
  official:Bool,
  iso639:String,
  iso3166:String,
  names:Array<LangNames>
}

typedef TypePokemon = {
  slot:Int,
  pokemon:NameUrl
}

typedef TypeRelations = {
  no_damage_to:NameUrl,
  half_damage_to:NameUrl,
  double_damage_to:NameUrl,
  no_damage_from:NameUrl,
  half_damage_from:NameUrl,
  double_damage_from:NameUrl
}

typedef TypeT = {
  id:Int,
  name:String,
  damage_relations:TypeRelations,
  game_indices:Array<GenerationGameIndex>,
  generation:NameUrl,
  move_damage_class:NameUrl,
  names:Array<LangNames>,
  pokemon:Array<TypePokemon>,
  moves:Array<NameUrl>
}

typedef Characteristic = {
 id:Int, 
 gene_modulo:Int,
 possible_values:Array<Int>
}


typedef EggGroup = {
  id:Int,
  name:String,
  names:Array<LangNames>,
  pokemon_species:Array<NameUrl>
}

typedef Gender = {
  id:Int,
  name:String,
  pokemon_species_details:Array<PokemonSpeciesGender>,
  required_for_evolution:Array<NameUrl>
}

typedef PokemonSpeciesGender = {
  rate:Int,
  pokemon_species:NameUrl
}

typedef GrowthRate = {
  id:Int,
  name:String,
  formula:String,
  descriptions:Array<Description>,
  levels:Array<GrowthRateExperienceLevel>,
  pokemon_species:Array<NameUrl>
}

typedef GrowthRateExperienceLevel = {
  level:Int,
  experience:Int
}

typedef Nature = {
  id:Int,
  name:String,
  decreased_stat:NameUrl,
  increased_stat:NameUrl,
  hates_flavor:NameUrl,
  likes_flavor:NameUrl,
  pokeathlon_stat_changes:Array<NatureStatChange>,
  move_battle_style_preferences:Array<MoveBattleStylePreference>,
  names:Array<LangNames>
} 

typedef NatureStatChange = {
  max_change:Int,
  pokeathlon_stat:NameUrl
}

typedef MoveBattleStylePreference = {
  low_hp_preference:Int,
  high_hp_preference:Int,
  move_battle_style:NameUrl
}

typedef PokeathlonStat = {
  id:Int,
  name:String,
  names:Array<LangNames>,
  affect_natures:NaturePokeathlonStatAffectSets
}

typedef NaturePokeathlonStatAffectSets = {
  increase:Array<NaturePokeathlonStatAffect>,
  decrease:Array<NaturePokeathlonStatAffect>
}

typedef NaturePokeathlonStatAffect = {
  max_change:Int,
  nature:NameUrl
}

typedef Pokemon = {
  id:Int,
  name:String,
  base_experience:Int,
  height:Int,
  is_default:Bool,
  order:Int,
  weight:Int,
  abilities:Array<PokemonAbility>,
  forms:Array<NameUrl>,
  game_indices:Array<VersionGameIndex>,
  held_items:Array<PokemonHeldItem>,
  location_area_encounters:String,
  moves:Array<PokemonMove>,
  sprites:PokemonSprites,
  species:Array<NameUrl>,
  stats:Array<PokemonStat>,
  types:Array<PokemonType>,
}

typedef PokemonAbility = {
  is_hidden:Bool,
  slot:Int,
  ability:NameUrl
}

typedef PokemonType = {
  slot:Int,
  type:NameUrl
}

typedef PokemonHeldItem = {
  item:NameUrl,
  version_details:Array<PokemonHeldItemVersion>
}

typedef PokemonHeldItemVersion = {
  version:NameUrl, 
  rarity:Int
}

typedef PokemonMove = {
  move:NameUrl,
  version_group_details:Array<PokemonMoveVersion>
}

typedef PokemonMoveVersion = {
  move_learn_method:NameUrl,
  version_group:NameUrl,
  level_learned_at:Int
}

typedef PokemonStat = {
  stat:NameUrl,
  effort:Int,
  base_stat:Int
}

typedef PokemonSprites = {
  front_default:String,
  front_shiny:String,
  front_female:String,
  front_shiny_female:String,
  back_default:String,
  back_shiny:String,
  back_female:String,
  back_shiny_female:String,
}

typedef LocationAreaEncounter = {
  location_area:NameUrl,
  version_details:Array<VersionEncounterDetail>
}

typedef PokemonColor = {
  id:Int,
  name:String,
  names:Array<LangNames>,
  pokemon_species:Array<NameUrl>
}

typedef PokemonForm = {
  id:Int,
  name:String,
  order:Int,
  form_order:Int,
  is_default:Bool,
  is_battle_only:Bool,
  is_mega:Bool,
  form_name:String,
  sprites:PokemonFormSprites,
  version_group:NameUrl,
  names:Array<LangNames>,
  form_names:Array<LangNames>
}

typedef PokemonFormSprites = {
  front_default:String,
  front_shiny:String,
  back_default:String,
  back_shiny:String
}

typedef PokemonHabitat = {
  id:Int,
  name:String,
  names:Array<LangNames>,
  pokemon_species:Array<NameUrl>
}

typedef PokemonShape = {
  id:Int,
  name:String,
  awesome_names:Array<AwesomeName>,
  names:Array<LangNames>,
  pokemon_species:Array<NameUrl>
}

typedef AwesomeName = {
  awesome_name:String,
  language:NameUrl
}

typedef PokemonSpecies = {
  id:Int,
  name:String,
  order:Int,
  gender_rate:Int,
  capture_rate:Int,
  base_happiness:Int,
  is_baby:Bool,
  hatch_counter:Int,
  has_gender_differences:Bool,
  forms_switchable:Bool,
  growth_rate:NameUrl,
  pokedex_numbers:Array<PokemonSpeciesDexEntry>,
  egg_groups:Array<NameUrl>,
  color:NameUrl,
  shape:NameUrl,
  evolves_from_species:NameUrl,
  evolution_chain:Url,
  habitat:NameUrl,
  generation:NameUrl,
  names:Array<LangNames>,
  pal_park_encounters:Array<PalParkEncounterArea>,
  flavor_text_entries:Array<FlavorText>,
  form_descriptions:Array<Description>,
  genera:Array<Genus>,
  varieties:Array<PokemonSpeciesVariety>
}


typedef Genus = {
  genus:String,
  language:NameUrl
}

typedef PokemonSpeciesDexEntry = {
  entry_number:Int,
  pokedex:NameUrl
}

typedef PalParkEncounterArea = {
  base_score:Int,
  rate:Int,
  area:NameUrl
}

typedef PokemonSpeciesVariety = {
  is_default:Bool,
  pokemon:NameUrl
}