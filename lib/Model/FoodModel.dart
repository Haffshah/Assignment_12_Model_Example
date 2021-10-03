class FoodModel {
  late final String? title;
  late final String? price;
  late final String? image;

  FoodModel({this.title, this.image, this.price});
}

List serverSideData = [
  {
    "title": "Vada Pau",
    "price": "₹80",
    "image": "images/Vada-Pav-500x500.jpg"
  },
  {
    "title": "Large Pizza",
    "price": "₹1199",
    "image": "images/pizza.jpg"
  },
  {
    "title": "Cheese Burger",
    "price": "₹120",
    "image": "images/burger.png"
  },
  {
    "title": "Masala Dosha",
    "price": "₹150",
    "image": "images/dosa.jpg"
  },
  {
    "title": "Idli Sambhar",
    "price": "₹80",
    "image": "images/idli.jpg"
  },
  {
    "title": "Gujarati Thali",
    "price": "₹130",
    "image": "images/gujarati.JPG"
  },
  {
    "title": "Panjabi Thali ",
    "price": "₹145",
    "image": "images/Punjabi-thali-WS-1.jpg"
  },
  {
    "title": "Sandwich",
    "price": "₹110",
    "image": "images/Sandwish.jpg"
  },
];

List<FoodModel> arrayofFoodData() {
  return serverSideData
      .map(
        (item) => FoodModel(
            title: item["title"], price: item["price"], image: item["image"]),
      ).toList();
}
