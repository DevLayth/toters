import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class s1 extends StatefulWidget {
  const s1({super.key});

  @override
  State<s1> createState() => _s1State();
}

class _s1State extends State<s1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      body: SafeArea(
        child: Column(children: [
          CustomAppbar()
        ],),
      ),
    );
  }
}

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0

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
                  style: TextStyle(
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
            color: Color(0xD112CC1B),
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