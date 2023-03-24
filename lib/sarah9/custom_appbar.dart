
import 'package:flutter/material.dart';

class customAppbar extends StatelessWidget {
  const customAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0,top: 10.0),
      child: Row(children: [
        IconButton
        (onPressed: (){}, icon: Icon(Icons.menu_rounded,)),
        SizedBox(width: MediaQuery.of(context).size.width*0.1,),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 10.0),
            height: 35,
            decoration: BoxDecoration(color:Colors.white60,
        borderRadius: BorderRadius.circular(50),
    
        ),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(style:const TextStyle(fontSize: 14),
                decoration:const
              InputDecoration(hintText: "Search for store or an item",
              helperStyle: TextStyle(
                fontSize: 14,
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
            decoration: BoxDecoration(color:Color.fromARGB(255, 0, 180, 145),
        borderRadius: BorderRadius.circular(50),
    
        ),
        child: Icon(Icons.search,color: Colors.black38,),
        )
          ],
        ),
        ))
      ],),
    );
  }
}
