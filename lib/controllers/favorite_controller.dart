import 'package:get/get.dart';

class FavoriteController extends GetxController{

  RxList<String> fruits = ['Apple', 'Orange', 'Mango', 'banana'].obs;
  RxList favoriteFruites = [].obs;

  addToFavorite(String value){
    favoriteFruites.add(value);
  }

  removeFromFavorite(String value){
    favoriteFruites.remove(value);
  }

}