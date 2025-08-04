// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:conait/Components/neon_card.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CotreeDesc extends StatefulWidget {
  const CotreeDesc({super.key});

  @override
  State<CotreeDesc> createState() => _CotreeDescState();
}

class _CotreeDescState extends State<CotreeDesc> {
  final List<String> screenshotPaths = [
    'assets/images/Cotree_1.png',
    'assets/images/Cotree_2.png',
    'assets/images/Cotree_3.png',
    'assets/images/Cotree_4.png',
    'assets/images/Cotree_5.png',
    'assets/images/Cotree_6.png',
    'assets/images/Cotree_7.png',
    'assets/images/Cotree_8.png',
    'assets/images/Cotree_9.png',
    'assets/images/Cotree_10.png',
    'assets/images/Cotree_11png',
    'assets/images/Cotree_12.png',
    'assets/images/Cotree_13.png',
    'assets/images/Cotree_14.png',
    // Add more asset paths as needed
  ];

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
          child: Column(
            children: [
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
                      icon:
                          const Icon(Icons.arrow_forward, color: Colors.black),
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
              Image.asset(
                'images/cotree_gradient.png',
                width: double.infinity,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
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
                padding: const EdgeInsets.only(left: 80, right: 80),
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
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 30, right: 50),
                child: Text(
                    "Cotree is a modern professional hub where you can showcase your projects, resume, writing, \nand achievements in a flexible, Notion-style layout \nwhile also connecting with peers and mentors like on LinkedIn.",
                    style: GoogleFonts.inter(
                      fontSize: 25,
                      color: Colors.black.withOpacity(0.7),
                    )),
              ),

              // --- Carousel Section ---
              const SizedBox(height: 50),
              CarouselSlider(
                options: CarouselOptions(
                  height: 500,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  viewportFraction: 0.2,
                ),
                items: screenshotPaths.map((path) {
                  return Builder(
                    builder: (BuildContext context) {
                      return NeonCard(
                        intensity: 0.5,
                        glowSpread: 0.8,
                        child: Container(
                          width: 250,
                          height: 500,
                          alignment: Alignment.center,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              path,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 70),
              // --- End Carousel Section ---
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Headline Row
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Work Smarter",
                              style: GoogleFonts.inter(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Every Day",
                              style: GoogleFonts.playfairDisplay(
                                fontSize: 50,
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Text(
                            "\nHelpful Tools. Actionable Tips.\nBetter Habits.",
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              color: Colors.black.withOpacity(0.7),
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    // Main Content Row
                    Row(
                      crossAxisAlignment: CrossAxisAlignment
                          .center, // <-- Vertically center children
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Left: Image with rounded corners, vertically centered
                        Container(
                          height: 200,
                          width: 300,
                          // <-- Ensures child is centered vertically
                          child: Image.asset(
                            'assets/images/cotree_logo.png', // <-- Replace with your image path
                            fit: BoxFit.cover,
                          ),
                        ),

                        // Right: Features grid
                        const Column(
                          children: [
                            _FeatureItem(
                              number: "01",
                              title: "Daily Planning Tips",
                              desc:
                                  "Start each morning with a quick overview and organized priorities for maximum focus.",
                            ),
                            _FeatureItem(
                              number: "03",
                              title: "End-of-Day Review",
                              desc:
                                  "Reflect on progress and prepare for tomorrow with a simple nightly check-in.",
                            ),
                            _FeatureItem(
                              number: "05",
                              title: "Quick Notes",
                              desc:
                                  "Capture thoughts, ideas, and reminders instantly without breaking your flow.",
                            ),
                          ],
                        ),
                        const Column(children: [
                          const _FeatureItem(
                            number: "04",
                            title: "Recurring Tasks",
                            desc:
                                "Automate routines so tasks requiring least thinking are handled automatically.",
                          ),
                          _FeatureItem(
                            number: "05",
                            title: "Goal Tracking",
                            desc:
                                "Stay on track as you monitor goals and watch your progress with built-in tracking tools.",
                          ),
                          _FeatureItem(
                            number: "06",
                            title: "Focus Sessions",
                            desc:
                                "Increase focus with time-blocked sessions and built-in focus music.",
                          ),
                        ])
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Gradient bar at the bottom
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

class _FeatureItem extends StatelessWidget {
  final String number;
  final String title;
  final String desc;

  const _FeatureItem({
    required this.number,
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            number,
            style: GoogleFonts.birthstone(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 218, 85, 129),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            desc,
            style: GoogleFonts.inter(
              fontSize: 14,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }
}
