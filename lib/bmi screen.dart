import 'package:flutter/material.dart';
class Bmicalculator extends StatefulWidget {
  const Bmicalculator({super.key});

  @override
  State<Bmicalculator> createState() => _BmicalculatorState();
}

class _BmicalculatorState extends State<Bmicalculator> {
  final TextEditingController _height=TextEditingController();
  final TextEditingController _weight=TextEditingController();
  double result=0;
  void calculation(){
    double Height=double.parse(_height.text)/100;
    double Weight=double.parse(_weight.text);
    double Heightsquare=Height*Height;
    result=Weight/Heightsquare;
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:Text("BMI Calculator"),backgroundColor: Colors.pink),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          style: TextStyle(color: Colors.pink),
          controller: _height,
          decoration: InputDecoration(
          icon: new Icon(Icons.trending_up,color: Colors.pink),
          hintText: 'Height in Cm',
        )
          ,),
        
        TextField(
          style: TextStyle(color: Colors.pink),
            controller: _weight,
            decoration: InputDecoration(
          icon: Icon(Icons.line_weight,color: Colors.pink),
          labelText:"Weight in Kg"
        )
        ),
        SizedBox(height: 40),

        ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.pink),
            onPressed:(){setState(() {
              calculation();
            });},
            child: Text("Calculate")),
        Text(result.toStringAsFixed(2)),
      ],
    ),
    );
  }
}
