import 'dart:math';

import 'package:design_portfolio/email/email_page.dart';
import 'package:design_portfolio/home/home_screen.dart';
import 'package:design_portfolio/utils/responsive_helper.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // GIF фон на весь екран
          Positioned.fill(
            child: Image.asset('assets/gifs/back.gif', fit: BoxFit.fill),
          ),
          // SVG та PNG зображення поверх
          Positioned.fill(
            child: Stack(
              children: [
                Positioned(
                  right: -40,
                  bottom: 0,

                  child: Image.asset('assets/images/star.png'),
                ),
                Positioned(
                  left: ResponsiveHelper.adaptiveX(context, 600),
                  child: Image.asset(
                    'assets/images/book.png',
                    scale: ResponsiveHelper.adaptiveScale(context, 1.6),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 600,
                  child: Transform.rotate(
                    angle: 0.94 * pi,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    HomeScreen(),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ),
                        );
                      },
                      child: Container(
                        width: 500,
                        height: 720,
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),

                AnimatedPositioned(
                  duration: Duration(milliseconds: 900),
                  top: !isClicked
                      ? ResponsiveHelper.adaptiveY(context, -800)
                      : ResponsiveHelper.adaptiveY(context, -200),
                  right: ResponsiveHelper.adaptiveX(context, 80),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isClicked = !isClicked;
                      });
                    },
                    child: Image.asset(
                      'assets/images/scratch.png',
                      scale: ResponsiveHelper.adaptiveScale(context, 1.1),
                    ),
                  ),
                ),

                //inst img
                AnimatedPositioned(
                  duration: Duration(milliseconds: 800),
                  top: isClicked
                      ? ResponsiveHelper.adaptiveY(context, 100)
                      : ResponsiveHelper.adaptiveY(context, -100),
                  right: ResponsiveHelper.adaptiveX(context, 130),
                  child: GestureDetector(
                    onTap: () async {
                      final uri = Uri.parse(
                        'https://www.instagram.com/mozzhershtern?igsh=YWcxMWJwMTR3bTVv',
                      );
                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri, mode: LaunchMode.inAppBrowserView);
                      }
                    },
                    child: Image.asset(
                      'assets/images/inst.png',
                      scale: ResponsiveHelper.adaptiveScale(context, 1.4),
                    ),
                  ),
                ),

                //tg img
                AnimatedPositioned(
                  duration: Duration(milliseconds: 900),
                  top: isClicked
                      ? ResponsiveHelper.adaptiveY(context, 280)
                      : ResponsiveHelper.adaptiveY(context, -100),
                  right: ResponsiveHelper.adaptiveX(context, 130),
                  child: GestureDetector(
                    onTap: () async {
                      final uri = Uri.parse('https://t.me/msKvak');
                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri, mode: LaunchMode.inAppBrowserView);
                      }
                    },
                    child: Image.asset(
                      'assets/images/tg.png',
                      scale: ResponsiveHelper.adaptiveScale(context, 1.4),
                    ),
                  ),
                ),

                //gmail img
                AnimatedPositioned(
                  duration: Duration(milliseconds: 900),
                  top: isClicked
                      ? ResponsiveHelper.adaptiveY(context, 380)
                      : ResponsiveHelper.adaptiveY(context, -100),
                  right: ResponsiveHelper.adaptiveX(context, 130),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  EmailPage(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/images/gmail.png',
                      scale: ResponsiveHelper.adaptiveScale(context, 1.4),
                    ),
                  ),
                ),

                Positioned(
                  bottom: ResponsiveHelper.adaptiveY(context, -70),
                  left: ResponsiveHelper.adaptiveX(context, -40),
                  child: Transform.rotate(
                    angle: 0.1,
                    child: Image.asset(
                      'assets/images/text.png',
                      scale: ResponsiveHelper.adaptiveScale(context, 0.8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
