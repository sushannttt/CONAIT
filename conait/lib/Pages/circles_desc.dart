import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:conait/Components/screenshot_carousal.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CirclesDesc extends StatefulWidget {
  const CirclesDesc({super.key});

  @override
  State<CirclesDesc> createState() => _CirclesDescState();
}

class _CirclesDescState extends State<CirclesDesc> {
  bool animationDone = false;

  void _onFlickerComplete() {
    setState(() {
      animationDone = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // 🔹 Background Image
            Image.asset(
              'assets/images/bitmap.png',
              width: screenWidth,
              height: 3500,
              fit: BoxFit.cover,
            ),

            // 🔹 Foreground UI
            Column(
              children: [
                const SizedBox(height: 120), // Top padding

                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 1200,
                        child: DefaultTextStyle(
                          style: GoogleFonts.daysOne(
                            fontSize: 300,
                            color: Colors.white,
                            shadows: const [
                              Shadow(
                                blurRadius: 10.0,
                                color: Colors.white,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: animationDone
                              ? const Text("Circles")
                              : AnimatedTextKit(
                                  isRepeatingAnimation: true,
                                  animatedTexts: [
                                    FlickerAnimatedText('Circles'),
                                  ],
                                  onFinished: _onFlickerComplete,
                                ),
                        ),
                      ),
                      if (animationDone)
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: AnimatedTextKit(
                            isRepeatingAnimation: false,
                            animatedTexts: [
                              TypewriterAnimatedText(
                                "Where real connections stay close",
                                textStyle: GoogleFonts.orbitron(
                                  fontSize: 24,
                                  color: Colors.white,
                                  letterSpacing: 1.2,
                                ),
                                speed: const Duration(milliseconds: 50),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),

                const SizedBox(height: 800), // scrollable space

                const SizedBox(height: 100),
                ScreenshotCarousel(
                  imagePaths: [
                    'assets/screenshots/ss01.jpg',
                    'assets/screenshots/ss02.jpg',
                    'assets/screenshots/ss03.jpg',
                  ],
                  captions: [
                    'Create Communities',
                    'What the Heck is a Circle?!?!?',
                    'Customizable Posts',
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: _buildAppBar(),
      ),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: Text(
        'CONAIT',
        style: GoogleFonts.orbitron(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
        ),
      ),
      actions: [
        _AppBarTab(title: 'Home'),
        const SizedBox(width: 24),
        _AppBarTab(title: 'About'),
        const SizedBox(width: 24),
        _AppBarTab(title: 'Projects'),
        const SizedBox(width: 24),
        _AppBarTab(title: 'Contact'),
        const SizedBox(width: 32),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFB33EFF),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
          child: const Text(
            'Register',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}

class _AppBarTab extends StatelessWidget {
  final String title;
  const _AppBarTab({required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // TODO: Add navigation
      },
      child: Text(
        title,
        style: GoogleFonts.orbitron(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
      ),
    );
  }
}
