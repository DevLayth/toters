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
    return Scaffold( backgroundColor: Colors.white,
    body:SafeArea(
      child: Column(children: [
        customAppbar()
      ]),
    ),
    );
  }
}

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
            decoration: BoxDecoration(color:Colors.green,
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
