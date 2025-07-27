import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CotreeDesc extends StatefulWidget {
  const CotreeDesc({super.key});

  @override
  State<CotreeDesc> createState() => _CotreeDescState();
}

class _CotreeDescState extends State<CotreeDesc> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'CONAIT',
              style: GoogleFonts.orbitron(
                color: Colors.black,
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
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.black, width: 2),
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(height: 60),
            // Headline and subheadline
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  Text(
                    'Build, Showcase & Share Your Professional Story—Your Way',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Create. Connect.\nShowcase. Grow.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 1.1,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Cotree blends the structure of LinkedIn with the flexibility of Notion.\nOne platform to create your portfolio, connect professionally,\nand grow—visually and authentically.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  const SizedBox(height: 32),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward, color: Colors.black),
                    label: const Text(
                      'TRY IT FOR FREE',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.black, width: 2),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 28, vertical: 16),
                    ),
                  ),
                ],
              ),
            ),
            // Gradient image below all text
            const SizedBox(height: 48),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'images/cotree_gradient.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
                Image.asset(
                  'images/cotree_hand.png',
                  fit: BoxFit.contain,
                ),
              ],
            ),

            const SizedBox(height: 100),

            // New section matching the reference
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Headline
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Designed to\n', // main bold part
                              style: GoogleFonts.inter(
                                fontSize: 44,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                height: 1.1,
                              ),
                            ),
                            TextSpan(
                              text:
                                  'Showcase skills, \nconnect meaningfully,', // italic part
                              style: GoogleFonts.playfairDisplay(
                                fontSize: 44,
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                                height: 1.1,
                              ),
                            ),
                            TextSpan(
                              text: '\ngrow freely.', // main bold part
                              style: GoogleFonts.inter(
                                fontSize: 44,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                height: 1.1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  // Subheadline
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Text(
                      '\nOur productivity app is built for modern professionals\nwho want to stay organized, focused, and in control.',
                      textAlign: TextAlign.right,
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            // Features row
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Feature 1
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Smart Task Management',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Easily create, categorize, and prioritize tasks with a drag-and-drop interface that adapts to your workflow.',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 32),
                  // Feature 2
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Integrated Calendar & Deadlines',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Stay ahead of your schedule with a built-in calendar that syncs across all your devices and reminds you before deadlines hit.',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 32),
                  // Feature 3
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Focus Mode',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Eliminate distractions with a minimalist interface and time-blocking tools that help you get into deep work—fast.',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Coverflow-style carousel section
            const SizedBox(height: 40),
            SizedBox(
              height: 260,
              child: _CoverflowCarousel(),
            ),
            const SizedBox(height: 40),
          ]),
        ),
      ),
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
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
      ),
    );
  }
}

class _CarouselCard extends StatelessWidget {
  final String imageUrl;
  final double rotation;
  final double width;
  final double height;
  const _CarouselCard(
      {required this.imageUrl,
      required this.rotation,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotation,
      child: Container(
        width: 160,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.12),
              blurRadius: 16,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _CoverflowCarousel extends StatefulWidget {
  @override
  State<_CoverflowCarousel> createState() => _CoverflowCarouselState();
}

class _CoverflowCarouselState extends State<_CoverflowCarousel> {
  final PageController _pageController =
      PageController(viewportFraction: 0.38, initialPage: 3);
  final List<String> images = [
    'assets/images/Cotree 1.png',
    'assets/images/Cotree 2.png',
    'assets/images/Cotree 3.png',
    'assets/images/Cotree 4.png',
    'assets/images/Cotree 5.png',
    'assets/images/Cotree 6.png',
    'assets/images/Cotree 7.png',
    'assets/images/Cotree 8.png',
    'assets/images/Cotree 9.png',
    'assets/images/Cotree 10.png',
    'assets/images/Cotree 11.png',
    'assets/images/Cotree 12.png',
    'assets/images/Cotree 13.png',
    'assets/images/Cotree 14.png',
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: images.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return AnimatedBuilder(
          animation: _pageController,
          builder: (context, child) {
            double value = 0;
            if (_pageController.position.haveDimensions) {
              value = _pageController.page! - index;
            } else {
              value = (_pageController.initialPage - index).toDouble();
            }
            value = value.clamp(-1, 1);
            final double scale = 1 - (value.abs() * 0.25);
            final double angle = value * 0.25;
            return Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..scale(scale)
                ..rotateZ(angle),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                width: 180, // Set your desired width
                height: 320, // Set your desired height
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.12),
                      blurRadius: 16,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  images[index],
                  fit: BoxFit.contain,
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _VerticalCoverflowCarousel extends StatefulWidget {
  @override
  State<_VerticalCoverflowCarousel> createState() =>
      _VerticalCoverflowCarouselState();
}

class _VerticalCoverflowCarouselState
    extends State<_VerticalCoverflowCarousel> {
  final PageController _pageController =
      PageController(viewportFraction: 0.55, initialPage: 3);
  final List<String> images = [
    'https://randomuser.me/api/portraits/men/1.jpg',
    'https://randomuser.me/api/portraits/men/2.jpg',
    'https://randomuser.me/api/portraits/women/3.jpg',
    'https://randomuser.me/api/portraits/women/4.jpg',
    'https://randomuser.me/api/portraits/men/5.jpg',
    'https://randomuser.me/api/portraits/women/6.jpg',
    'https://randomuser.me/api/portraits/men/7.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: images.length,
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return AnimatedBuilder(
          animation: _pageController,
          builder: (context, child) {
            double value = 0;
            if (_pageController.position.haveDimensions) {
              value = _pageController.page! - index;
            } else {
              value = (_pageController.initialPage - index).toDouble();
            }
            value = value.clamp(-1, 1);
            final double scale = 1 - (value.abs() * 0.25);
            return Center(
              child: Transform.scale(
                scale: scale,
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        blurRadius: 16,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Image.network(
                    images[index],
                    fit: BoxFit.cover,
                    width: 180, // Portrait: width < height
                    height: 300, // Portrait: height > width
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
