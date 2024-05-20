import 'package:fitness/common/colo_extension.dart';
import 'package:fitness/view/on_boarding/on_boarding_view.dart';
import 'package:flutter/material.dart';
import '../../common_widget/round_button.dart';

class StartedView extends StatefulWidget {
  const StartedView({super.key});

  @override
  State<StartedView> createState() => _StartedViewState();
}

class _StartedViewState extends State<StartedView> {


  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.black,
     body: Padding(
       padding: const EdgeInsets.symmetric(vertical: 70),
       child: Container(
           width: media.width,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               const Spacer(),
               const Spacer(),
               Text(
                 "FitMe",
                 style: TextStyle(
                     color: TColor.white,
                     fontSize: 50,
                     fontWeight: FontWeight.w700),
               ),
               
               SizedBox(height: 20),
              
               Padding(
       padding: const EdgeInsets.symmetric(horizontal: 50), // Adjust the values as needed
     child: Center(
       child: Text(
     "Discover Your Strength, Define Your Success",
     style: TextStyle(
       color: TColor.white,
       fontSize: 18,
     ),
     textAlign: TextAlign.center, // This line is optional
       ),
     ),
     ),
               
               SafeArea(
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 15),
                   child: RoundButton(
                     title: "Get Started",
                     
                     onPressed: () {
                     
                         Navigator.push(
                             context,
                             MaterialPageRoute(
                                 builder: (context) => const OnBoardingView()));
                     },
                   ),
                 ),
               ),
             ],
           )),
     ));
  }
}
