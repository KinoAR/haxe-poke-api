
typedef NameUrl = {
  name:String, 
  url:String
}

typedef LangNames = {
   name:String,
   language:NameUrl
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
  names:Array<LangNames>
}