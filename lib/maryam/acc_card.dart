import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class acc_card extends StatelessWidget {
  const acc_card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Stack(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.black12,
            child: Container(
              height: 55,
               child: Icon(Icons.manage_accounts),),
          )
        ],
        
      ),
    );
  }
}
