import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:trackizer_ui/core/styles/TextStyles.dart';

class CustomCarouselSlider extends StatefulWidget {
  const CustomCarouselSlider({
    super.key, required this.itemsDetails,

  });

  final List<Map<String, dynamic>> itemsDetails;

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  // Add a variable to track the current index
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var media=MediaQuery.of(context).size;

    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: widget.itemsDetails.length,
            itemBuilder: (context, index, realIndex) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Adjusts to the size of children
                  children: [
                    Container(
                      width: media.width*0.42,
                      height: media.height*0.2,
                      decoration: ShapeDecoration(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48.23),
                        ),
                      ),
                      child: Image.asset(
                        widget.itemsDetails[index]['itemLogo'],
                        width: media.width*0.40,
                        height: media.height*0.19,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: media.height*0.018,),
                    // Conditionally display the text
                    if (_currentIndex == index)
                      Text(
                        widget.itemsDetails[index]['itemName'],
                        style: style14,
                      ),
                  ],
                ),
              );
            },
            options: CarouselOptions(
              height: 210,
              viewportFraction: 0.6,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: false,

              enlargeCenterPage: true,
              enlargeFactor: 0.4,
              onPageChanged: (index, reason) {
                // Update the state to reflect the new index
                setState(() {
                  _currentIndex = index;
                });
              },
              scrollDirection: Axis.horizontal,
            )
        ),
      ],
    );
  }
}
