
typedef Berry = {
  id:Int,
  name:String,
  growth_time:Int,
  max_harvest:Int,
  natural_gift_power:Int,
  size:Int,
  smoothness:Int,
  soil_dryness:Int,
  firmness: {
    name:String,
    url:String
  },
  flavors:Array<{
    potency:Int,
    flavor: {
      name:String,
      url:String
    }
  }>,
  item: {
    name:String,
    url:String
  },
  natural_gift_type:{
    name:String,
    url:String
  }
}