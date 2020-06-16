import Pokedex;



class Main {

  public static function main() {
    var pokedex = new Pokedex();
    pokedex.getBerryByName("cheri")
    .then((response) -> {
      trace("Berry Response", response);
    }, (reject) -> {
      trace("Failed request", reject);
    });
  }
}