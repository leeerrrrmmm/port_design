import 'package:design_portfolio/home/home_screen.dart';
import 'package:design_portfolio/home/pages/blender_page.dart';
import 'package:design_portfolio/home/pages/figma_page.dart';
import 'package:design_portfolio/home/pages/photoshop_page.dart';
import 'package:design_portfolio/home/pages/procreate_page.dart';
import 'package:flutter/material.dart';

class ClipStudioPage extends StatelessWidget {
  const ClipStudioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/clipFrame.png', fit: BoxFit.fill),
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
          // AboutButton (HomeScreen) - замість BlenderButton
          Positioned(
            top: 30,
            left: 210,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const HomeScreen(),
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
        ],
      ),
    );
  }
}
