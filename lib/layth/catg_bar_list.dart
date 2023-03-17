import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toters/layth/catg_bar_card.dart';
import 'package:toters/layth/catg_bar_data.dart';
import 'package:toters/layth/catg_data_modul.dart';

class catg_bar_list extends StatelessWidget {
  const catg_bar_list({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: bar_data.length,
          itemBuilder: (context, index) {
            return catg_bar_card(
                img: bar_data[index].img, txt: bar_data[index].txt);
          }),
    );
  }
}
