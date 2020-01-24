class BreedCat {

  //--- Name Of City
  final String name;
  //-- image
  final String image;
  //--- population
  // final String population;
  //--- country
  // final String country;

  BreedCat({this.name,this.image});

  static List<BreedCat> allCities()
  {
    var breed = new List<BreedCat>();


    breed.add(new BreedCat(name:"Lahore",image: "lahore.png"));

    breed.add(new BreedCat(name:"Delhi",image: "delhi.png"));
    breed.add(new BreedCat(name:"London",image: "london.png"));
    breed.add(new BreedCat(name:"Vancouver",image: "vancouver.png"));
    breed.add(new BreedCat(name:"New York",image: "newyork.png"));
    



    return breed;
  }
}