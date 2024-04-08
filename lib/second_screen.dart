import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe0e0e0),
      body: Padding(
        padding: const EdgeInsets.all(300),
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade300,
                gradient: RadialGradient(
                  colors: [
                    Colors.white.withOpacity(0.0),
                    Colors.grey.shade400,
                  ],
                  center:
                  const AlignmentDirectional(0.1, 0.1),
                  focal:
                  const AlignmentDirectional(0.0, 0.0),
                  radius: 0.65,
                  focalRadius: 0.001,
                  stops: const [0.3, 1.0],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade300,
                gradient: RadialGradient(
                  colors: [
                    Colors.white.withOpacity(0.0),
                    Colors.white,
                  ],
                  center:
                  const AlignmentDirectional(-0.1, -0.1),
                  focal:
                  const AlignmentDirectional(0.0, 0.0),
                  radius: 0.67,
                  focalRadius: 0.001,
                  stops: const [0.75, 1.0],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}