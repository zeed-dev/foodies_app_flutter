class Category {
  int id;
  String name;
  String image;

  Category({
    this.id,
    this.image,
    this.name,
  });
}

List<Category> mockCategory = [
  Category(
    id: 1,
    name: "Burger",
    image: "assets/ic_burger.png",
  ),
  Category(
    id: 2,
    name: "Spageti",
    image: "assets/ic_spageti.png",
  ),
  Category(
    id: 3,
    name: "Pizza",
    image: "assets/ic_pizza.png",
  ),
  Category(
    id: 4,
    name: "Cakes",
    image: "assets/ic_cake.png",
  )
];
