import 'package:flutter/material.dart';
import 'package:toters/colors.dart';
import 'package:toters/sarah9/food_model.dart';
class detail_screen extends StatefulWidget {
  final Product foodDetail;
  const detail_screen({super.key, required this.foodDetail});

  @override
  State<detail_screen> createState() => _detail_screenState();
}

class _detail_screenState extends State<detail_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Tcolor,

        title: Text(widget.foodDetail.title,
        style:const TextStyle(color: Colors.black),),
        elevation: 0,
        iconTheme:const  IconThemeData(
          color: Colors.black),
      ),

body: SafeArea(child: SingleChildScrollView(
  child:   Column(children: [
  
    Container(
  
      height: MediaQuery.of(context).size.height*0.4,
  
      width: double.infinity,
  
      decoration: 
  
      BoxDecoration(
  
        color: Tcolor,
  
      borderRadius:const  
  
      BorderRadius.only(bottomLeft: 
  
      Radius.circular(10.0),
  
      bottomRight: Radius.circular(10.0),),
  
      
  
      ),
  
      child: Image.asset(widget.foodDetail.image,)
  
    ),
  
        const SizedBox(
  
          height: 20,
  
        ),
  
        Padding(
  
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10.0),
  
          child: Column(
  
            children: [
  
              Text(widget.foodDetail.description,
  
                style: TextStyle(color: Colors.black,
  
                fontSize: 15
  
                ),),
  
                const SizedBox(
  
                  height: 20,
  
                ),
  
                Row(
  
                  children: [
  
                  Text("\IQD ${widget.foodDetail.price}",
  
              
  
              style: const TextStyle(
  
                color: Tcolor,
  
                fontSize: 18,
  
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
  
              "${widget.foodDetail.rating}",
  
              
  
              style: const TextStyle(
  
                color: Colors.black,
  
                fontSize: 14,
  
                fontWeight: FontWeight.bold,
  
                ),
  
              ),
  
                  ],
  
                ),
  
              const SizedBox(
  
                  height: 20,
  
                ),
  
  
  
            Row(children: [
  
          InkWell(
  
            onTap: () {
  
              
  
            },
  
              child: Container(
  
              height: 45,
  
              width: 45,
  
              decoration: BoxDecoration(color: Tcolor,
  
              borderRadius: BorderRadius.circular(10.0)),
  
                child:const Icon(Icons.remove),
  
              ),
  
            ),
  
          const SizedBox(width: 8.0,),      
  
  
  
            const Text("1",
  
            style:  TextStyle(
  
                color: Colors.black,
  
                fontSize: 20,
  
                fontWeight: FontWeight.bold,
  
                ),
  
                ),
  
            const SizedBox(width: 8.0,),      
  
                  InkWell(
  
            onTap: () {
  
              
  
            },
  
              child: Container(
  
              height: 45,
  
              width: 45,
  
              decoration: BoxDecoration(color: Tcolor,
  
              borderRadius: BorderRadius.circular(10.0)),
  
                child:const Icon(Icons.add),
  
              ),
  
            )
  
  
  
  ],
  
  ),
  
          const SizedBox(
  
            height: 80.0,),      
  
  
  
  MaterialButton(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
  
    minWidth: double.infinity,
  
    height: 50,
  
    color: Tcolor,
  
    onPressed: (){},child: const Text("Add to Cart",
  
    style: TextStyle(
  
                color: Colors.black,
  
                fontSize: 18,
  
                fontWeight: FontWeight.bold,
  
                ),) ,)
  
  
  
            ],
  
          ),
  
        ),
  
  
  
  ],),
)),



    );
  }
}