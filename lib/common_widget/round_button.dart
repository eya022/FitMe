import 'package:flutter/material.dart';
import '../common/colo_extension.dart';

enum RoundButtonType { bgGradient, bgSGradient, textGradient }

class RoundButton extends StatelessWidget {
  final String title;
  final RoundButtonType type;
  final VoidCallback onPressed;
  final double fontSize;
  final double elevation;
  final FontWeight fontWeight;

  const RoundButton({
    Key? key,
    required this.title,
    this.type = RoundButtonType.bgGradient,
    this.fontSize = 16,
    this.elevation = 1,
    this.fontWeight: FontWeight.w700,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280, // Ensure the button takes full width
      child: Container(
        // Adjust the width as needed
        decoration: BoxDecoration(
          color:TColor.secondaryColor1,
          borderRadius: BorderRadius.circular(10),
         
             
        ),
        child: MaterialButton(
          onPressed: onPressed,
          height: 50,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          textColor: TColor.primaryColor1,
        
          child: type == RoundButtonType.bgGradient || type == RoundButtonType.bgSGradient
              ? Text(
                  title,
                  style: TextStyle(
                    color: TColor.white,
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                  ),
                )
              : ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (bounds) {
                    return LinearGradient(
                      colors: TColor.primaryG,
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ).createShader(Rect.fromLTRB(0, 0, bounds.width, bounds.height));
                  },
                  child: Text(
                    title,
                    style: TextStyle(
                      color: TColor.primaryColor1,
                      fontSize: fontSize,
                      fontWeight: fontWeight,
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
