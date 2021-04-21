class Foods {
  int id;
  String name;
  String address;
  double price;
  double rate;
  int count;
  String desc;
  String image;

  Foods({
    this.id,
    this.name,
    this.address,
    this.price,
    this.rate,
    this.count,
    this.desc,
    this.image,
  });
}

List<Foods> mockFoods = [
  Foods(
    id: 1,
    name: "Beef Burger",
    address: "Jl Gomong Raya Nomor 69",
    image: "assets/food1.png",
    price: 11.5,
    rate: 5.5,
    count: 69,
    desc:
        "Spaghetti (Italian: [spaˈɡetti]) is a long, thin, solid, cylindrical pasta. It is a staple food of traditional Italian cuisine. Like other pasta, spaghetti is made of milled wheat and water and sometimes enriched with vitamins and minerals. Italian spaghetti is typically made from durum wheat semolina.",
  ),
  Foods(
    id: 2,
    name: "Pancake",
    address: "Jl Sayong Asri Nomor 46",
    image: "assets/food2.png",
    price: 7.5,
    rate: 4.5,
    count: 27,
    desc:
        "Spaghetti (Italian: [spaˈɡetti]) is a long, thin, solid, cylindrical pasta. It is a staple food of traditional Italian cuisine. Like other pasta, spaghetti is made of milled wheat and water and sometimes enriched with vitamins and minerals. Italian spaghetti is typically made from durum wheat semolina.",
  ),
  Foods(
    id: 3,
    name: "Spageti",
    address: "Jl Penarukan Nomor 50",
    image: "assets/food3.png",
    price: 9,
    rate: 9.5,
    count: 69,
    desc:
        "Spaghetti (Italian: [spaˈɡetti]) is a long, thin, solid, cylindrical pasta. It is a staple food of traditional Italian cuisine. Like other pasta, spaghetti is made of milled wheat and water and sometimes enriched with vitamins and minerals. Italian spaghetti is typically made from durum wheat semolina.",
  ),
  Foods(
    id: 4,
    name: "Pizza",
    address: "Jl Sadang Nomor 27",
    image: "assets/food4.png",
    price: 12.5,
    rate: 3.5,
    count: 11,
    desc:
        "Spaghetti (Italian: [spaˈɡetti]) is a long, thin, solid, cylindrical pasta. It is a staple food of traditional Italian cuisine. Like other pasta, spaghetti is made of milled wheat and water and sometimes enriched with vitamins and minerals. Italian spaghetti is typically made from durum wheat semolina.",
  ),
];
