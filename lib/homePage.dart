import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/CategoryTitle.dart';
import 'package:food_delivery/DetailsScreen.dart';
import 'package:food_delivery/FoodCard.dart';
import 'package:food_delivery/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
      Container(
        padding: EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color:kpURPLEColor ,

        ),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPinkColor,

          ),
          child: Icon(Icons.add,size: 50,color: Colors.white,),
        ),),
        appBar: AppBar(
        backgroundColor: kpURPLEColor,
        elevation: 0,
        leading: Icon(Icons.menu),
        ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Simple way to find Tasty food",
              style: Theme.of(context).textTheme.headline4),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryTitle(title: "All",active: true,),
                CategoryTitle(title: "Italien",),
                CategoryTitle(title: "Asian",),
                CategoryTitle(title: "Chinese"),
                CategoryTitle(title: "Tunisian"),
                CategoryTitle(title: "Burgers"),


              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color:kpURPLEColor),

            ),
            child: Icon(Icons.search),

          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FoodCard(
                    title: "Vegan salad bowl",
                    ingredient: "red Tomato",
                    image: "https://github.com/abuanwar072/Food-App/blob/master/assets/images/image_1.png?raw=true",
                    price: 20,
                    calories: "420Kcal",
                    description: "You will LOVE this vegan rainbow salad bowl, it puts a fun spin on your typical salad. This is my go-to lunch on a busy day. It takes about 10 minutes to put together, it’s filling, nutrient dense and super yummy. As a health coach, I highly recommend having more plant-focused meals as they are filled with fiber, antioxidants, vitamins and minerals."),
                FoodCard(
                    title: "Vegan salad bowl",ingredient: "red Tomato", image: "https://github.com/abuanwar072/Food-App/blob/master/assets/images/image_2.png?raw=true", price: 20, calories: "420Kcal", description: "You will LOVE this vegan rainbow salad bowl, it puts a fun spin on your typical salad. This is my go-to lunch on a busy day. It takes about 10 minutes to put together, it’s filling, nutrient dense and super yummy. As a health coach, I highly recommend having more plant-focused meals as they are filled with fiber, antioxidants, vitamins and minerals."),
                FoodCard(
                    title: "Vegan salad bowl",ingredient: "red Tomato", image: "https://github.com/abuanwar072/Food-App/blob/master/assets/images/image_1_big.png?raw=true", price: 20, calories: "420Kcal", description: "You will LOVE this vegan rainbow salad bowl, it puts a fun spin on your typical salad. This is my go-to lunch on a busy day. It takes about 10 minutes to put together, it’s filling, nutrient dense and super yummy. As a health coach, I highly recommend having more plant-focused meals as they are filled with fiber, antioxidants, vitamins and minerals."),
                SizedBox(width: 20,),
              ],
            ),
          ),
          

        ],
      ),
    );
  }
}
