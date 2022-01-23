import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 12.0,right: 20,top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
               child: Icon(Icons.arrow_back_outlined,size: 20,),
                ),
                Icon(Icons.menu,),

              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 300,
                width: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kpURPLEColor,

                ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://github.com/abuanwar072/Food-App/blob/master/assets/images/image_1.png?raw=true"),
                    fit: BoxFit.cover
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Vegan salad bowl \n",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: kPrimaryColor.withOpacity(.5)),
                          ),

                          TextSpan(
                            text: "With red Tomato ",
                            style: TextStyle(fontWeight: FontWeight.bold,color: kOrangeColor.withOpacity(.5)),
                          ),
                        ]
                      )
                  ),

                Text("\$20",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: kPinkColor),),
              ],
            ),
            Text("You will LOVE this vegan rainbow salad bowl, it puts a fun spin on your typical salad. This is my go-to lunch on a busy day. It takes about 10 minutes to put together, it’s filling, nutrient dense and super yummy. As a health coach, I highly recommend having more plant-focused meals as they are filled with fiber, antioxidants, vitamins and minerals."),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 27),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(.19),
                      borderRadius: BorderRadius.circular(30),

                    ),
                    child: Row(
                      children: [
                        Text(
                          "Add to bag ",
                          style: Theme.of(context).textTheme.button,
                        ),
                        SizedBox(width: 30,),
                        Icon(Icons.arrow_forward_outlined,size: 20,),

                      ],
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
