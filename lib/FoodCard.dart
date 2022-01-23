import 'package:flutter/material.dart';
import 'package:food_delivery/DetailsScreen.dart';
import 'package:food_delivery/constants.dart';
class FoodCard extends StatelessWidget {
  final String title;
  final String ingredient;
  final String image;
  final int price;
  final String calories;
  final String description;
  const FoodCard({Key? key,required this.title,
    required this.ingredient,
    required  this.image,
    required this.price,
    required  this.calories,
    required  this.description,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   GestureDetector(

      child: Container(
        height: 400,
        width: 270,
        margin: EdgeInsets.only(left: 20),
        child: Stack(
          children: [
            Positioned(
              right:0,
              bottom: 0,
              child: Container(
                height: 380,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: kPrimaryColor.withOpacity(.06),
                ),
              ),
            ),

            Positioned(
              left: 10,
              top: 10,
              child: Container(
                height: 181,
                width: 181,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(.15),
                ),

              ),
            ),
            Positioned(
              top: 0,
              left: -50,
              child: Container(
                height: 184,
                width: 276,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(image),
                  ),
                ),

              ),
            ),
            //Price
            Positioned(
              right: 20,
              top: 80,
              child: Text(
                "\$ $price",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: kPinkColor),),
            ),
            Positioned(
                left: 40,
                top: 201,
                child: Container(
                  width: 210,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: kGreenColor),),
                      Text(
                        "With $ingredient ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black26),),
                      SizedBox(height: 16,),
                      Text(description,
                        maxLines: 3,
                        style: TextStyle(color: Colors.grey.withOpacity(.65)),),
                      SizedBox(height: 16,),
                      Text(calories),
                    ],
                  ),
                )),
            Container(
              child: InkWell(
                onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailsScreen();
                      }),
                    );

                },
              ),
            )
          ],
        ),
      ),
    );

  }
}
