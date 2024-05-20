import 'package:flutter/material.dart';
import '../common/colo_extension.dart';

class OnBoardingPage extends StatelessWidget {
  final Map pObj;
  const OnBoardingPage({Key? key, required this.pObj});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: media.width,
        height: media.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(pObj["image"].toString()),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          // Add your other widgets here
        ),
      ),
    );
  }
}
