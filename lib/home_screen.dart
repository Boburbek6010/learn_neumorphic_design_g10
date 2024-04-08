import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learn_neumorphic_design_g10/data/sources.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  static const double blurRadius = 20;
  static const double spreadRadius = 5;
  static const double height = 300;
  static const double width = 300;


  BoxShadow shadow({required Offset offset, required Color color}){
    return BoxShadow(
      offset: offset,
      color: color,
      spreadRadius: spreadRadius,
      blurRadius: blurRadius,
    );
  }

  Future<void>onPressed()async{
    Sources.isPressed = true;
    setState(() {});
    await Future.delayed(Sources.duration);
    Sources.isPressed = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Sources.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            // light Container
            AnimatedContainer(
              duration: Sources.duration,
              height: height,
              width: width,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Sources.backgroundColor,
                boxShadow: Sources.isPressed ? null :[
                  shadow(
                    offset: -Sources.offset,
                    color: Sources.whiteColor,
                  ),
                  shadow(
                    offset: Sources.offset,
                    color: Sources.blackColor,
                  ),
                ],
              ),
              child: Sources.customButton(
                onPressed: onPressed,
                shape: const CircleBorder()
              )
            ),

            AnimatedContainer(
                duration: Sources.duration,
                height: height,
                width: width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: const Alignment(-0.819, -0.573),
                    end: Alignment(cos(pi * 35 / 180), sin(pi * 35 / 180)),
                    colors: const [
                      Color(0xffcacaca),
                      Color(0xfff0f0f0),
                    ],
                  ),

                  // shape: BoxShape.circle,
                  borderRadius: BorderRadius.circular(20),
                  color: Sources.backgroundColor,
                  boxShadow: Sources.isPressed ? null :[
                    shadow(
                      offset: -Sources.offset,
                      color: Sources.whiteColor,
                    ),
                    shadow(
                      offset: Sources.offset,
                      color: Sources.blackColor,
                    ),
                  ],
                ),
                child: Sources.customButton(
                    onPressed: onPressed,
                )
            ),

            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    offset: -Sources.offset,
                    blurRadius: blurRadius,
                    color: Sources.whiteColor,
                  ),
                  BoxShadow(
                    offset: Sources.offset,
                    blurRadius: blurRadius,
                    color: Sources.blackColor,
                  ),
                ],
                gradient: const LinearGradient(
                  transform: GradientRotation((180 - 145) * pi / 180),
                  colors: [
                    Color(0xfff0f0f0),
                    Color(0xffcacaca),
                  ],
                ),
              ),
            ),


            // dark Container

            // Container(
            //   height: 300,
            //   width: 300,
            //   decoration: BoxDecoration(
            //       color: const Color(0xFF292D32),
            //       borderRadius: BorderRadius.circular(20),
            //       boxShadow: [
            //
            //         BoxShadow(
            //           offset: -offset,
            //           color: Colors.white.withOpacity(0.1),
            //           spreadRadius: spreadRadius,
            //           blurRadius: blurRadius,
            //         ),
            //
            //         BoxShadow(
            //           offset: offset,
            //           color: Colors.black.withOpacity(0.4),
            //           spreadRadius: spreadRadius,
            //           blurRadius: blurRadius,
            //         ),
            //
            //       ]
            //   ),
            //   child: MaterialButton(
            //     splashColor: const Color(0xFF30353B),
            //     hoverColor: const Color(0xFF30353B),
            //     focusColor: const Color(0xFF30353B),
            //     highlightColor: const Color(0xFF30353B),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     onPressed: (){},
            //     child: const Text("Press"),
            //   ),
            // ),

          ],
        ),
      ),
    );
  }
}
