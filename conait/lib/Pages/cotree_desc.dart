import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CotreeDesc extends StatefulWidget {
  const CotreeDesc({super.key});

  @override
  State<CotreeDesc> createState() => _CotreeDescState();
}

class _CotreeDescState extends State<CotreeDesc>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // Background Gradient
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(0.0, 1.4),
                radius: 1.5,
                colors: [
                  Color.fromRGBO(247, 247, 247, 1),
                  Color.fromRGBO(237, 186, 141, 1),
                  Color.fromRGBO(162, 119, 85, 1),
                  Color.fromRGBO(71, 42, 23, 1),
                ],
                stops: [0.01, 0.35, 0.54, 0.91],
              ),
            ),
          ),
          
          Center(
            child: SizedBox(
              height: 200,
              width: 300,
              child: Image.asset(
                'assets/images/cotree_logo.png',
                fit: BoxFit.cover,
              ),
            ),
          )
          ]

    ));
}
}