import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.result, required this.ismale, required this.age} );


  final double result;
  final bool ismale;
  final int age;


  String get resultPhrase{
    String resulttext='';
    if(result>=30) {
      resulttext='obese';
    } else if(result>25&&result<40) {
     resulttext='overWeight';
   }
    if(result>=18.5&&result<=24.9) resulttext='Normal';
    return resulttext;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Result'),elevation: 0.0,centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Gender: ${ismale?'male':'female'}",style:  Theme.of(context).textTheme.headline1),
            Text("Result: ${result.toStringAsFixed(1)}",style: Theme.of(context).textTheme.headline1,),
            Text("Healthness: $resultPhrase",style: Theme.of(context).textTheme.headline1,),
            Text("Age: $age",style:  Theme.of(context).textTheme.headline1),
          ],
        ),
        ),
      );
  }
}