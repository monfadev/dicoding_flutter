part of 'models.dart';

class RestaurantModel {
  late String title;
  late String urlToImageResto;
  late String description;
  late String address;
  late String phone;
  late String rating;
  late String ulasan;
  late List<Menu> menu;

  RestaurantModel({
    required this.title,
    required this.urlToImageResto,
    required this.description,
    required this.address,
    required this.phone,
    required this.rating,
    required this.ulasan,
    required this.menu,
  });

  RestaurantModel.fromJson(Map<String, dynamic> json) {
    title = json["title"];
    urlToImageResto = json["urlToImageResto"];
    description = json["description"];
    address = json["address"];
    phone = json["phone"];
    rating = json["rating"];
    ulasan = json["ulasan"];
    menu = List<Menu>.from(json["menu"].map((menu) {
      return Menu.fromJson(menu);
    }));
  }
}

class Menu {
  late String titleImage;
  late String urlToImage;
  late String hargaMenu;

  Menu({required this.titleImage, required this.urlToImage,  required this.hargaMenu});

  Menu.fromJson(Map<String, dynamic> json) {
    titleImage = json["titleImage"];
    urlToImage = json["urlToImage"];
    hargaMenu = json["hargaMenu"];
  }
}

List<RestaurantModel> parseRestaurant(String? json) {
  if (json == null) {
    return [];
  }

  final List<dynamic> parse = jsonDecode(json);
  return parse.map((json) => RestaurantModel.fromJson(json)).toList();
}
