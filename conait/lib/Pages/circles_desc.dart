import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:conait/Components/screenshot_carousal.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visibility_detector/visibility_detector.dart';

class CirclesDesc extends StatefulWidget {
  const CirclesDesc({super.key});

  @override
  State<CirclesDesc> createState() => _CirclesDescState();
}

class _CirclesDescState extends State<CirclesDesc> {
  bool animationDone = false;
  bool typewriterDone = false;
  bool showParagraph = false;

  final GlobalKey _titleKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();

  List<String> featureParagraphs = [
    "💠 Curated Experience, Not Algorithm Overload\nForget doomscrolling and irrelevant content. Our intelligent feed learns what you actually care about and respects your attention — without flooding you with viral junk or exploiting your screen time.",
    "💠 Customizable Layouts & Feed\nUnlike other platforms where one layout fits all, Circles lets you build your own experience. Change how your app looks, choose the content format, and even decide how your feed behaves — because control belongs to you.",
    "💠 Privacy & Comfort by Design\nWe’ve ditched the performative nature of traditional platforms. No vanity metrics. No public likes or follower pressure. Just real conversations with real people.",
    "💠 Workspace for Your Real Life\nCircles isn’t only for sharing moments — it’s your digital HQ. From project submissions to to-do tracking and academic timelines, your Workspace Page brings all your important tasks into one seamless space. No switching apps, no scattered tabs.",
    "💠 Transparency > Manipulation\nWe’re not an ad machine. You are not the product. Our commitment is to our users, not advertisers. You’ll never have to dig through an explore page just to find what you’re actually looking for.",
  ];

  int currentParagraphIndex = -1;
  bool showCurrent = false;
  bool carouselStarted = false;

  void _onFlickerComplete() {
    setState(() {
      animationDone = true;
    });
  }

  void _onTypewriterComplete() async {
    await Future.delayed(const Duration(milliseconds: 20));
    setState(() {
      typewriterDone = true;
    });
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_checkIfTitleOutOfView);
  }

  void _checkIfTitleOutOfView() {
    if (!animationDone || !typewriterDone || showParagraph) return;

    final RenderBox? box =
        _titleKey.currentContext?.findRenderObject() as RenderBox?;
    if (box != null) {
      final position = box.localToGlobal(Offset.zero);
      if (position.dy + box.size.height < 0) {
        setState(() {
          showParagraph = true;
        });
      }
    }
  }

  void _startParagraphCycle() async {
    if (carouselStarted) return;
    carouselStarted = true;

    int i = 0;
    while (mounted) {
      setState(() {
        currentParagraphIndex = i % featureParagraphs.length;
        showCurrent = true;
      });

      await Future.delayed(const Duration(milliseconds: 2500));

      setState(() {
        showCurrent = false;
      });

      await Future.delayed(const Duration(milliseconds: 600));

      i++; // Move to next paragraph
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/bitmap.png',
              width: screenWidth,
              height: 3500,
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                const SizedBox(height: 120),
                Center(
                  child: Column(
                    key: _titleKey,
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
                                  isRepeatingAnimation: false,
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
                            onFinished: _onTypewriterComplete,
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 400),
                AnimatedOpacity(
                  opacity: showParagraph ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 800),
                  child: AnimatedSlide(
                    duration: const Duration(milliseconds: 800),
                    offset: showParagraph ? Offset.zero : const Offset(0, 0.2),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 380.0),
                      child: Center(
                        child: Text(
                          "Circles is a pioneering social media platform designed to foster genuine connections by focusing on close-knit, private communities. Unlike traditional platforms, we eliminate the noise of superficial engagement, offering users a more personal, meaningful experience — complete with customizable feeds and adaptable app layouts.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 200),
                ScreenshotCarousel(
                  imagePaths: [
                    'assets/screenshots/ss01.jpg',
                    'assets/screenshots/ss02.jpg',
                    'assets/screenshots/ss03.jpg',
                    'assets/screenshots/ss06.jpg',
                  ],
                  captions: [
                    'Create Communities',
                    'What the Heck is a Circle?!?!?',
                    'Customizable Posts',
                    'Settings Page',
                  ],
                ),
                const SizedBox(height: 180),
                Text(
                  "Designed to Work Your Way",
                  style: GoogleFonts.daysOne(
                    color: const Color.fromRGBO(117, 216, 216, 1),
                    fontSize: 40,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 300),
                  child: Center(
                    child: Text(
                      "Circles is not just another social media app — it's a response to everything people are frustrated with in today's platforms.\n\nWe’re building a platform that prioritizes real human connection over manufactured content and addictive scrolling. Social media has become a noisy place full of ads, filters, and pressure to perform. We believe that’s not how it should be.\n\nThat’s why Circles revolves around close-knit, invite-only communities where trust, context, and meaningful interactions thrive. Think of it as your digital living room — private, personal, and shaped entirely by you and your people.\n\nBut we didn’t stop there.",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(height: 170),
                VisibilityDetector(
                  key: const Key("feature-fader"),
                  onVisibilityChanged: (info) {
                    if (info.visibleFraction > 0.2) {
                      _startParagraphCycle();
                    }
                  },
                  child: SizedBox(
                    height: 200,
                    child: Center(
                      child: AnimatedOpacity(
                        opacity: showCurrent ? 1.0 : 0.0,
                        duration: const Duration(milliseconds: 600),
                        child: AnimatedSlide(
                          offset:
                              showCurrent ? Offset.zero : const Offset(0, 0.2),
                          duration: const Duration(milliseconds: 600),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 200.0),
                            child: currentParagraphIndex >= 0
                                ? Text(
                                    featureParagraphs[currentParagraphIndex],
                                    style: GoogleFonts.poppins(
                                        color: Colors.white, fontSize: 18),
                                    textAlign: TextAlign.center,
                                  )
                                : const SizedBox.shrink(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 150),
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
      onTap: () {},
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
