class City {

  //--- Name Of City
  final String name;
  //-- image
  final String imglink;
  //--- population
  final String population;
  //--- country
  final String country;

  City({this.name,this.country,this.population,this.imglink});

  static List<City> allCities()
  {
    var lstOfCities = new List<City>();


    lstOfCities.add(new City(name:"Lahore",country: "Pakistan",population: "10 mill",imglink: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqBY7skKLcbS597cMwY-AOUL54pIEsEl2dd9dxr4VH6RdT9XWN&s"));

    lstOfCities.add(new City(name:"Delhi",country: "India",population: "19 mill",imglink: "https://flutter.io/images/catalog-widget-placeholder.png"));
    lstOfCities.add(new City(name:"London",country: "Britain",population: "8 mill",imglink: "https://www.honestdocs.co/system/image_attachments/images/000/008/635/original/iStock-671565156_%281%29.jpg"));
    lstOfCities.add(new City(name:"Vancouver",country: "Canada",population: "2.4 mill",imglink: "vancouver.png"));
    lstOfCities.add(new City(name:"New York",country: "USA",population: "8.1 mill",imglink: "newyork.png"));
    lstOfCities.add(new City(name:"Paris",country: "France",population: "2.2 mill",imglink: "paris.png"));
    lstOfCities.add(new City(name:"Berlin",country: "Germany",population: "3.7 mill",imglink: "berlin.png"));

    lstOfCities.add(new City(name:"Lahore",country: "Pakistan",population: "19 mill",imglink: "lahore.png"));

    lstOfCities.add(new City(name:"Delhi",country: "India",population: "19 mill",imglink: "delhi.png"));
    lstOfCities.add(new City(name:"London",country: "Britain",population: "8 mill",imglink: "london.png"));
    lstOfCities.add(new City(name:"Vancouver",country: "Canada",population: "2.4 mill",imglink: "vancouver.png"));
    lstOfCities.add(new City(name:"New York",country: "USA",population: "8.1 mill",imglink: "newyork.png"));
    lstOfCities.add(new City(name:"Paris",country: "France",population: "2.2 mill",imglink: "paris.png"));
    lstOfCities.add(new City(name:"Berlin",country: "Germany",population: "3.7 mill",imglink: "berlin.png"));



    return lstOfCities;
  }
}