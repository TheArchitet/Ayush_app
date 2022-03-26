import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class slider extends StatelessWidget {
  // const slider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: Carousel.length,
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 0.97,
        initialPage: 0,
        enlargeCenterPage: true,
      ),
      itemBuilder: (BuildContext context, int Index, int page) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 40,
              shadowColor: Colors.green,
              child: GridTile(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                      image: AssetImage(Carousel[Index].Images),
                      fit: BoxFit.cover),
                ),
              )),
        );
      },
    );
  }
}

class CarouselItem {
  String Images;

  CarouselItem({
    required this.Images,
  });
}

List<CarouselItem> Carousel = [
  CarouselItem(
    Images: "assets/images/Ayurveda_slider.jpeg",
  ),
  CarouselItem(
    Images: "assets/images/Yogaa.jpeg",
  ),
  CarouselItem(
    Images: "assets/images/Unani.jpeg",
  ),
  CarouselItem(
    Images: "assets/images/Siddha.jpeg",
  ),
  CarouselItem(
    Images: "assets/images/Homeopathy.jpeg",
  ),
];
