import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ScreenshotCarousel extends StatefulWidget {
  final List<String> imagePaths;
  final List<String> captions;

  const ScreenshotCarousel({
    super.key,
    required this.imagePaths,
    required this.captions,
  });

  @override
  State<ScreenshotCarousel> createState() => _ScreenshotCarouselState();
}

class _ScreenshotCarouselState extends State<ScreenshotCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: widget.imagePaths.length,
          options: CarouselOptions(
            height: 600,
            autoPlay: true,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            viewportFraction: 0.3,
            autoPlayInterval: const Duration(seconds: 4),
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          itemBuilder: (context, index, realIndex) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  widget.imagePaths[index],
                  fit: BoxFit.contain,
                  width: double.infinity,
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 20),
        // 🔹 Caption with fade animation
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (child, animation) =>
              FadeTransition(opacity: animation, child: child),
          child: Text(
            widget.captions[_currentIndex],
            key: ValueKey<String>(widget.captions[_currentIndex]),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.1,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}


