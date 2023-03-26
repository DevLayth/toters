import 'package:flutter/material.dart';
import 'package:toters/colors.dart';
import 'package:toters/sarah9/detail_screen.dart';
import 'package:toters/sarah9/food_model.dart';


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
      itemBuilder: (context,index)=>FoodProduct(press: () { 
        Navigator.push(context, MaterialPageRoute(builder: (context)=>detail_screen(
          foodDetail: foodProducts[index],)));

        }, product: foodProducts[index],)),
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
        child: Column
        (crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Image.asset(product.image),
          Text(product.title,
          style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
          ),
    
          Row(
            children: [
            Text("\IQD ${product.price}",
            
            style: const TextStyle(
              color: Tcolor,
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
