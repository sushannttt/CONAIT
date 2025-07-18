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
    return Scaffold(
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
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
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
                'images/cotree_gradient.jpg',
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
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 40),
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

          // Gradient bar at the bottom
          const SizedBox(height: 32),
          Image.asset(
            'images/cotree_gradient.jpg',
            width: double.infinity,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
          const SizedBox(height: 60),
        ]),
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
