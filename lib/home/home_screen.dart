import 'package:design_portfolio/home/pages/blender_page.dart';
import 'package:design_portfolio/home/pages/clip_studio_page.dart';
import 'package:design_portfolio/home/pages/figma_page.dart';
import 'package:design_portfolio/home/pages/photoshop_page.dart';
import 'package:design_portfolio/home/pages/procreate_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/aboutFrame.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset('assets/images/exir.png', scale: 2),
            ),
          ),
          // ProcreateButton
          Positioned(
            top: 20,
            left: 400,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const ProcreatePage(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
              child: Container(
                width: 150,
                height: 50,
                color: Colors.transparent,
              ),
            ),
          ),
          // BlenderButton
          Positioned(
            top: 10,
            left: 590,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const BlenderPage(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
              child: Container(
                width: 150,
                height: 50,
                color: Colors.transparent,
              ),
            ),
          ),
          // FigmaButton
          Positioned(
            top: 10,
            left: 760,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const FigmaPage(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
              child: Container(
                width: 150,
                height: 50,
                color: Colors.transparent,
              ),
            ),
          ),
          // ClipStudioButton
          Positioned(
            top: 10,
            left: 940,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const ClipStudioPage(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
              child: Container(
                width: 150,
                height: 50,
                color: Colors.transparent,
              ),
            ),
          ),
          // PhotoshopButton
          Positioned(
            top: 10,
            left: 1120,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const PhotoshopPage(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
              child: Container(
                width: 150,
                height: 50,
                color: Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
