import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isMale = true;
  double heightVal = 170;
  int weight = 500;
  int age = 200;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body:  SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Center(
                  child:Row(
                    children:   [
                      m1Expanded(context,'male'),
                      const SizedBox(width: 15,),
                      m1Expanded(context,'female'),
                    ],
                  ),
                  
                ),
              ),
            ),
             Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    m2Expanded(context, 'weight'),
                    const SizedBox(width: 15),
                    m2Expanded(context, 'age'),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height/15,
              child: ElevatedButton(onPressed: (){}, child:  Text('Calculate',style: Theme.of(context).textTheme.headline1,)))
          ],
        ),
      ),
    );
  }


  Expanded m1Expanded(BuildContext context, String type) {
    return Expanded(
      child: GestureDetector(
        onTap: () => setState(() => isMale = (type == 'male') ? true : false),
        child: Container(

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: (isMale && type == 'male') || (!isMale && type == 'female')
                ? Colors.teal
                : Colors.blueGrey,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(type == 'male' ? Icons.male : Icons.female, size: 90),
              const SizedBox(height: 15),
              Text(
                type == 'male' ? 'Male' : 'Female',
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded m2Expanded(BuildContext context, String type) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: (isMale && type == 'male') || (!isMale && type == 'female')
              ? Colors.teal
              : Colors.blueGrey,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              type == 'age' ? 'Age' : 'Weight',
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              type == 'age' ? '$age' : '$weight',
              style: Theme.of(context).textTheme.headline2,
            ),const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(onPressed: (){
                  setState(() {
                    type==age?
                    --age
                    :--weight;
                  });
                   heroTag: type == 'age' ? 'age--' : 'weight--';
                },child: const Icon(Icons.remove),),
                const SizedBox(width: 30,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    type== age ?
                    ++age
                    :++weight;
                  });
                  heroTag: type == 'age' ? 'age++' : 'weight++';
                },child: const Icon(Icons.add),)
              ],
            )
          ],
        ),
      ),
    );
  }
}