import 'package:conait/Pages/cotree_desc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'Pages/circles_desc.dart';

void main() {
  runApp(const ConaitApp());
}

class ConaitApp extends StatelessWidget {
  const ConaitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CONAIT',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Montserrat',
      ),
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Allow body behind AppBar
      backgroundColor: Colors.white,
      appBar: PreferredSize(
  preferredSize: const Size.fromHeight(70),
  child: Container(
    padding: const EdgeInsets.symmetric(horizontal: 40),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.0),
      border: const Border(
        bottom: BorderSide(color: Colors.transparent),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Logo + Title
        Row(
          children: [
            
            Text(
              'CONAIT',
              style: GoogleFonts.orbitron(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ],
        ),

        // Navigation Tabs
        Row(
          children: [
            _AppBarTab(title: 'Home'),
            const SizedBox(width: 24),
            _AppBarTab(title: 'About'),
            const SizedBox(width: 24),
            _AppBarTab(title: 'Projects'),
            const SizedBox(width: 24),
            _AppBarTab(title: 'Contact'),
            const SizedBox(width: 32),

            // Register Button
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
          ],
        ),
      ],
    ),
  ),
),

      body: SingleChildScrollView(
        child: Column(
          children: [
            
            const _HeroSection(),
            const SizedBox(height: 32),
            const _ProjectsSection(),
            const SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}

class _HeroSection extends StatelessWidget {
  const _HeroSection();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 670,
      child: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/images/conait.svg',
              fit: BoxFit.cover,
            ),
          ),
          Row(
            
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 100),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      'Welcome to',
                      style: GoogleFonts.orbitron(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                    'CONAIT',
                    style: GoogleFonts.brunoAceSc(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 70,
                      letterSpacing: 2.5,
                    ),
                  ),
                    const SizedBox(height: 8),
                     AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Connecting Artificial Intelligence and Technology',
                          textStyle: GoogleFonts.orbitron(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 16,
                          ),
                          speed: const Duration(milliseconds: 60),
                        ),
                      ],
                      repeatForever: true,
                      pause: const Duration(seconds: 7),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                        elevation: 0,
                      ),
                      onPressed: () {},
                      child: const Text('Learn More', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 400),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      'Explore our projects',
                      style: GoogleFonts.brunoAceSc(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                     Text(
                      'Innovating in different domains of AI and technology.',
                      style: GoogleFonts.orbitron(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 24),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.deepPurple,
                        side: const BorderSide(color: Colors.deepPurple, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                      ),
                      onPressed: () {},
                      child: const Text('See Projects', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ProjectsSection extends StatelessWidget {
  const _ProjectsSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Our Projects',
            style: GoogleFonts.brunoAceSc(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              _ProjectCard(
                imagePath: 'assets/images/circles.png',
                title: 'Circles',
                description: 'Leveraging cutting-edge AI technologies to revolutionize healthcare diagnostics and patient care. Our solutions include advanced medical imaging analysis, predictive diagnostics, and personalized treatment recommendations.',
              ),
              SizedBox(width: 40),
              _ProjectCard(
                imagePath: 'assets/images/coTree.png',
                title: 'CoTree',
                description: 'Developing state-of-the-art AI-driven security solutions to combat modern cyber threats. Our systems provide real-time threat detection, automated response mechanisms, and advanced pattern recognition for enhanced protection.',
              ),
              SizedBox(width: 40),
              _ProjectCard(
                imagePath: 'assets/images/examEval.png',
                title: 'ExamEval',
                description: 'Transforming human communication through innovative AI technologies. From natural language processing to real-time translation, our solutions bridge communication gaps and enhance global connectivity.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ProjectCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  const _ProjectCard({required this.imagePath, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (title == 'Circles') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CirclesDesc()),
          );
        }
        else if(title == 'CoTree') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CotreeDesc()),
          );
        }// Add navigation for other cards here when needed
      },
      borderRadius: BorderRadius.circular(20),
      child: Card(
        color: Colors.white,
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          width: 360,
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath, width: 100, height: 100),
              const SizedBox(height: 24),
              Text(
                title,
                textAlign: TextAlign.center,
                style: GoogleFonts.brunoAceSc(
                  color: const Color(0xFF6C2EB7),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                description,
                textAlign: TextAlign.center,
                style: GoogleFonts.orbitron(
                  color: Colors.black87,
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
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
      onTap: () {
        // Add your navigation logic here
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

