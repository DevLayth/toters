
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0,top: 10.0

      ),
      child: Row(
        children: [
        IconButton(onPressed: () {}, icon:const Icon(Icons.menu_rounded,
        )
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width*0.1,
        ),

        Expanded(child: Container(

          padding: const EdgeInsets.only(left: 10.0),
          height: 35,
          decoration: BoxDecoration(
            color: Color.fromARGB(96, 239, 236, 236),
            borderRadius: BorderRadius.circular(50),
    
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  decoration:const InputDecoration(
                    hintText: "Serch for store or an item",
                    hintStyle: TextStyle(
                      fontSize: 15,
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
              
                ),
    
              ),
              Container(
          padding: const EdgeInsets.only(left: 10.0),
          height: 35,
          width: 60,
          decoration: BoxDecoration(
            color: Color.fromARGB(255,13, 180,138),
            borderRadius: BorderRadius.circular(50),
    
          ),
          child: Icon(
            Icons.search,color:Colors.black87,),
          )
    
            ],
          ),
    
        ))
    
    
    
    
        
      ],),
    );
  }
}