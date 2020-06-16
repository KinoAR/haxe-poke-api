import Pokedex;

@:jsRequire("pokedex-promise-v2")

class Main {

  public static function main() {
    var pokedex = new Pokedex();
    trace(pokedex);
  }
}