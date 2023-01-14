import 'package:flutter/material.dart';

class Secondpage extends StatefulWidget {
  Secondpage({Key? key}) : super(key: key);

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  int Textviewcount = 0;

  @override
  void initstate() {
    super.initState();
    incrementTextview();
  }

  void incrementTextview() {
    setState(() {
      if(Textviewcount>10){
      Textviewcount++;
    }});

    if (Textviewcount < 10) {
      Future.delayed(Duration(seconds: 5), incrementTextview);
    }
  }

  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: ListView.builder(itemCount: Textviewcount,itemBuilder: (context,index){
          return Text("Text view $index");
        },

        ),
      ),
    );
  }
}
