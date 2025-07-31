import 'package:conait/Components/featurecard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExamEvalDesc extends StatefulWidget {
  const ExamEvalDesc({super.key});

  @override
  State<ExamEvalDesc> createState() => _ExamEvalDescState();
}

class _ExamEvalDescState extends State<ExamEvalDesc> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final ScrollController _scrollController = ScrollController();

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          // Hero section (full screen)
          SliverToBoxAdapter(
            child: SizedBox(
              height: screenHeight,
              width: double.infinity,
              child: Stack(
                children: [
                  // Full background image
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'assets/images/exam_bg.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                  ),
                  // Headline and buttons (left-aligned)
                  Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      width: screenWidth * 0.55,
                      padding: const EdgeInsets.only(left: 150, right: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'AI grading made \nfast and fair',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              height: 1.2,
                            ),
                          ),
                          const SizedBox(height: 18),
                          Text(
                            'Fast and accurate evaluation models for developers and \ncompanies building GenAI applications.',
                            style: GoogleFonts.inter(
                              color: Colors.white70,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 28),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24, vertical: 14),
                                ),
                                child: const Text('Request a Demo',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              const SizedBox(width: 16),
                              OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  side: const BorderSide(
                                      color: Colors.white, width: 2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24, vertical: 14),
                                ),
                                child: const Text('Go to Docs',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Off-white scrollable content container (no overlap)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFFF8F7F4),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Evals are often\nall you need',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          color: Colors.black87,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    // Example: horizontally scrollable row of feature cards
                    LayoutBuilder(
                      builder: (context, constraints) {
                        // 3 cards visible at a time
                        const cardSpacing = 16.0;
                        const horizontalPadding = 24.0 * 2 +
                            12.0 * 2; // left/right padding + SizedBox
                        final cardWidth = (constraints.maxWidth -
                                horizontalPadding -
                                cardSpacing * 2) /
                            3;
                        return SizedBox(
                          height: 300,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Left arrow button
                              Container(
                                height: 60,
                                width: 48,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(24),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.08),
                                      blurRadius: 8,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                  icon: const Icon(Icons.arrow_back_ios_new,
                                      color: Colors.black87),
                                  onPressed: () {
                                    _scrollController.animateTo(
                                      (_scrollController.offset -
                                              cardWidth -
                                              cardSpacing)
                                          .clamp(
                                              0.0,
                                              _scrollController
                                                  .position.maxScrollExtent),
                                      duration:
                                          const Duration(milliseconds: 400),
                                      curve: Curves.ease,
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: SingleChildScrollView(
                                  controller: _scrollController,
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      const SizedBox(width: 12),
                                      SizedBox(
                                        width: cardWidth,
                                        height: 280,
                                        child: const Featurecard(
                                          title: 'AI-Powered Grading',
                                          description:
                                              "Uses natural language understanding to assess how close a student's response is to the reference answer.",
                                          icon: Icons.offline_bolt,
                                        ),
                                      ),
                                      const SizedBox(width: cardSpacing),
                                      SizedBox(
                                        width: cardWidth,
                                        height: 280,
                                        child: const Featurecard(
                                          title: 'Instant Results',
                                          description:
                                              'Grade hundreds of answer sheets in seconds',
                                          icon: Icons.integration_instructions,
                                        ),
                                      ),
                                      const SizedBox(width: cardSpacing),
                                      SizedBox(
                                        width: cardWidth,
                                        height: 280,
                                        child: const Featurecard(
                                          title: ' Flexible Input Formats',
                                          description:
                                              'Supports text-based responses and scanned handwritten sheets (OCR enabled).',
                                          icon: Icons.online_prediction,
                                        ),
                                      ),
                                      const SizedBox(width: cardSpacing),
                                      SizedBox(
                                        width: cardWidth,
                                        height: 280,
                                        child: const Featurecard(
                                          title: 'Detailed Feedback',
                                          description:
                                              'Highlights strengths and weaknesses in answers—line-by-line if needed.',
                                          icon: Icons.search,
                                        ),
                                      ),
                                      const SizedBox(width: cardSpacing),
                                      SizedBox(
                                        width: cardWidth,
                                        height: 280,
                                        child: const Featurecard(
                                          title: 'Analytics Dashboard',
                                          description:
                                              'View class-wise performance, common mistakes, and improvement areas.',
                                          icon: Icons.bar_chart,
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              // Right arrow button
                              Container(
                                height: 60,
                                width: 48,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(24),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.08),
                                      blurRadius: 8,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                  icon: const Icon(Icons.arrow_forward_ios,
                                      color: Colors.black87),
                                  onPressed: () {
                                    _scrollController.animateTo(
                                      _scrollController.offset +
                                          cardWidth +
                                          cardSpacing,
                                      duration:
                                          const Duration(milliseconds: 400),
                                      curve: Curves.ease,
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 60),
                    Center(
                      child: ScreenshotCarousel(
                        width: 1450,
                        height: 650,
                        screenshotPaths: const [
                          'assets/images/exameval_1.png',
                          'assets/images/exameval_2.png',
                          'assets/images/exameval_3.png',
                          
                          // add as many as you want
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
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

class ScreenshotCarousel extends StatefulWidget {
  final List<String> screenshotPaths;
  final double width;
  final double height;

  const ScreenshotCarousel({
    super.key,
    required this.screenshotPaths,
    required this.width,
    required this.height,
  });

  @override
  State<ScreenshotCarousel> createState() => _ScreenshotCarouselState();
}

class _ScreenshotCarouselState extends State<ScreenshotCarousel> {
  late final PageController _pageController;
  int _current = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 1);
    _pageController.addListener(() {
      final page = _pageController.page?.round() ?? 0;
      if (page != _current) {
        setState(() => _current = page);
      }
    });
  }

  void _goTo(int delta) {
    final target = (_current + delta).clamp(0, widget.screenshotPaths.length - 1);
    _pageController.animateToPage(
      target,
      duration: const Duration(milliseconds: 400),
      curve: Curves.ease,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget _buildIndicator() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(widget.screenshotPaths.length, (i) {
        final isActive = i == _current;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          width: isActive ? 14 : 8,
          height: 8,
          decoration: BoxDecoration(
            color: isActive ? Colors.white : Colors.white54,
            borderRadius: BorderRadius.circular(4),
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: Column(
        children: [
          SizedBox(
            height: widget.height,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Purplish-black gradient backdrop with soft glow
                Positioned.fill(
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/black_andPurpGrad.jpeg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                    decoration:  BoxDecoration(
                      boxShadow: [
                      // ambient glow
                      BoxShadow(
                        color: const Color(0xFFB33EFF).withOpacity(0.25),
                        blurRadius: 80,
                        spreadRadius: 12,
                        offset: const Offset(0, 0),
                      ),
                      // depth
                      BoxShadow(
                        color: Colors.black.withOpacity(0.6),
                        blurRadius: 40,
                        spreadRadius: 0,
                        offset: const Offset(0, 10),
                      ),
                    ],
                    ),
                  ),
                ),
                // Carousel card
                Center(
                  child: SizedBox(
                    width: widget.width * 0.75,
                    height: widget.height * 0.85,
                    child: Stack(
                      children: [
                        // Floating card background
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 40,
                                spreadRadius: 4,
                                offset: const Offset(0, 20),
                              ),
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                blurRadius: 20,
                                spreadRadius: 2,
                                offset: const Offset(0, 10),
                              ),
                            ],
                            ),
                          ),
                        ),
                        // Screenshot PageView
                        Positioned.fill(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: PageView.builder(
                              controller: _pageController,
                              itemCount: widget.screenshotPaths.length,
                              itemBuilder: (context, index) {
                                return Image.asset(
                                  widget.screenshotPaths[index],
                                  fit: BoxFit.contain,
                                  width: double.infinity,
                                  height: double.infinity,
                                );
                              },
                            ),
                          ),
                        ),
                        // Left arrow
                        Positioned(
                          left: 10,
                          top: 0,
                          bottom: 0,
                          child: Center(
                            child: GestureDetector(
                              onTap: () => _goTo(-1),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.2),
                                  shape: BoxShape.circle,
                                ),
                                padding: const EdgeInsets.all(10),
                                child: const Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Right arrow
                        Positioned(
                          right: 10,
                          top: 0,
                          bottom: 0,
                          child: Center(
                            child: GestureDetector(
                              onTap: () => _goTo(1),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.2),
                                  shape: BoxShape.circle,
                                ),
                                padding: const EdgeInsets.all(10),
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          _buildIndicator(),
        ],
      ),
    );
  }
}
