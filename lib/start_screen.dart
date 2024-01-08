import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
    const StartScreen( this.startQuiz,{super.key});

   final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return   Center(child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/quizeImg.jpg",width:200  ),
        const SizedBox(height: 30,),
        const Text("Learn flutter in fun way",style: TextStyle(fontSize: 20,color: Colors.white),),  
                const SizedBox(height: 30,),
                OutlinedButton.icon(onPressed: (){startQuiz();},icon: Icon(Icons.arrow_right), label:  const Text("Start Test"))

      ],
    ));
  }
}
