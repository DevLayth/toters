import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/colors.dart';
import 'package:toters/layth/catg_data_modul.dart';

import 'catg_card.dart';

class catg_grid extends StatelessWidget {
  const catg_grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 400,
        child: Center(
          child: GridView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: catg_data.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: catcard(
                    img: catg_data[index].img,
                    title: catg_data[index].title,
                    i: index,
                  ),
                );
              }),
        ),
      ),
    );
  }
}
