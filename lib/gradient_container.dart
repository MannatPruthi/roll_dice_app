import 'package:flutter/material.dart';
// import 'package:roll_dice_app/styled_text.dart';
import 'package:roll_dice_app/dice_roller.dart';
// Alignment? startAlignment;
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
const  GradientContainer({super.key, required this.colors});
  final List<Color> colors;
  
  // const GradientContainer.purple({super.key})
  //     : color1 = Color.deepPurple,
  //       color2 = Colors.indigo;

// const GradientContainer(Color color1, Color color2,{super.key});
//  this.color1 this.color2

  //  final Color color1,
  //  final Color color2,
// colors:[color1,color2]

 

  @override
  Widget build(BuildContext context) {
    // startAlignment = Alignment.topLeft;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child:  const Center(
        child: DiceRoller(),
      ),
    );
  }
}
