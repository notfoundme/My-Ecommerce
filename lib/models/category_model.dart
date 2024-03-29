import 'package:equatable/equatable.dart';

class CategoryModel extends Equatable {
  final String name;
  final String imageUrl;
  CategoryModel({required this.name, required this.imageUrl});
  
  @override
  //Takes list of Category to compare different names and imageurls
  List<Object?> get props => [name,imageUrl];

  // items for Carousel card
  static List<CategoryModel> categories = [
    CategoryModel(
      name: 'Soft Drinks',
      imageUrl:
          'https://images.unsplash.com/photo-1534057308991-b9b3a578f1b1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80', //https://unsplash.com/photos/5lZhD2qQ2SE
    ),
    CategoryModel(
      name: 'Smoothies',
      imageUrl:
          'https://images.unsplash.com/photo-1502741224143-90386d7f8c82?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80', //https://unsplash.com/photos/m741tj4Cz7M
    ),
    CategoryModel(
      name: 'Water',
      imageUrl:
          'https://images.unsplash.com/photo-1559839914-17aae19cec71?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80', //https://unsplash.com/photos/7Zlds3gm7NU
    ),
  ];
}

