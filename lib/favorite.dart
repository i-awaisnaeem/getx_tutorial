import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial_flutter/controllers/favorite_controller.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {

  final FavoriteController favoriteController = FavoriteController() ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Fruits'),
      ),
      body: ListView.builder(
      itemCount: favoriteController.fruits.length,
      itemBuilder: (context, index){
         return Card(
            child: ListTile(
              title: Text(favoriteController.fruits[index].toString()),
              trailing: Obx(()=> InkWell(
                onTap: (){
                  if(favoriteController.favoriteFruites.contains(favoriteController.fruits[index].toString())){
                    favoriteController.removeFromFavorite(favoriteController.fruits[index].toString());
                  }
                  else{
                    favoriteController.addToFavorite(favoriteController.fruits[index].toString());
                  }
                },
                child: Icon(favoriteController.favoriteFruites.contains(favoriteController.fruits[index].toString()) ? Icons.favorite : Icons.favorite_outline ) ,
              ))),
            );
      } ),
    );
  }
}
