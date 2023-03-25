import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:toters/colors.dart';
import 'package:toters/sarah9/food_model.dart';

import 'category_list.dart';
import 'custom_appbar.dart';


class s1 extends StatefulWidget {
  const s1({super.key});

  @override
  State<s1> createState() => _s1State();
}

class _s1State extends State<s1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
    body:SafeArea(
      child: ListView(children: const [
        //appbar
        customAppbar(),
        SizedBox(height: 20,
        ),
        CategoryCard(),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Popular Food",style:  TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold),),
        ),



        //create model our app food
        FoodCard(),
        
      ],
      
      
      ),
    ),
    );
  }
}

class FoodCard extends StatelessWidget {
  const FoodCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: foodProducts.length,
        gridDelegate:const
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      childAspectRatio: 0.75,
      mainAxisExtent: 190,
      crossAxisSpacing: 10.0,
      
      
      
      ), 
      itemBuilder: (context,index)=>FoodProduct(press: () {  }, product: foodProducts[index],)),
    );
  }
}

class FoodProduct extends StatelessWidget {
  const FoodProduct({
    super.key, required this.product, required this.press,
  });
  final Product product;
  final VoidCallback press;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container( padding:const EdgeInsets.all(10.0),
        decoration: 
      BoxDecoration(
        color: Colors.white10.withOpacity(1),
        borderRadius: BorderRadius.circular(15.0)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Image.asset(product.image),
          Text(product.title,
          style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
          ),
    
          Row(
            children: [
            Text("\IQD ${product.price}",
            
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold),
            ),
    
        const  Spacer(),
        const SizedBox(
          height: 10.0,
        ),
          const Icon(Icons.star,
          size: 20,
      
          color: Tcolor,
          ),Text(
            "${product.rating}",
            
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              ),
            ),
    
          ],
          )
        ],),
      ),
    );
  }
}
