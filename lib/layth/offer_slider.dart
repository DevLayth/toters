import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:toters/colors.dart';

class Offers extends StatefulWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  int _currentIndex = 0;

  final List<String> _imageList = [
    'assets/offer1.png',
    'assets/offer2.png',
    'assets/offer3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 350,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          width: 395,
          height: 225,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Tcolor,
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                left: 0,
                child: CarouselSlider.builder(
                  itemCount: _imageList.length,
                  itemBuilder:
                      (BuildContext context, int index, int realIndex) {
                    final String imagePath = _imageList[index];
                    return Container(
                      width: 350,
                      height: 200,
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                  options: CarouselOptions(
                    aspectRatio: 2 / 1,
                    viewportFraction: 1,
                    initialPage: _currentIndex,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: false,
                    disableCenter: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 5),
                    autoPlayAnimationDuration: Duration(milliseconds: 100),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, _) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 10),
              Positioned(
                bottom: 5,
                right: 0,
                left: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildDots(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildDots() {
    return List.generate(
      _imageList.length,
      (index) => Container(
        width: 8,
        height: 8,
        margin: EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentIndex == index
                ? Colors.white
                : Color.fromARGB(0, 255, 255, 255),
            border: Border.all(color: Colors.white, style: BorderStyle.solid)),
      ),
    );
  }
}

class MyImageData {
  final String imageUrl;

  MyImageData(this.imageUrl);
}
