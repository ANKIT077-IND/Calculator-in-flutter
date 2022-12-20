import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController firstValue=TextEditingController();
  TextEditingController secondValue=TextEditingController();

  var number1=0;
  var number2=0;
  var total=0;
  void _add(){
    setState((){
      number1=int.parse(firstValue.text);
      number2=int.parse(secondValue.text);
      total=number1+number2;
    });

   }
  void _sub(){
    setState((){
      number1=int.parse(firstValue.text);
      number2=int.parse(secondValue.text);
      total=number1-number2;
    });

   }
  void _mul(){
    setState((){
      number1=int.parse(firstValue.text);
      number2=int.parse(secondValue.text);
      total=number1*number2;
    });

   }
  void _div(){
    setState((){
      number1=int.parse(firstValue.text);
      number2=int.parse(secondValue.text);
      total=(number1/number2).toInt();
    });

   }



  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text("Practice"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Padding(
               padding: const EdgeInsets.only(left: 20,right: 20),
               child: TextFormField(
                 keyboardType: TextInputType.number,
                 decoration: const InputDecoration(
                   border: OutlineInputBorder(),
                   hintText: "first number"
                 ),
                 controller: firstValue,
               ),
             ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Second number"
                ),
                controller: secondValue,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("Total:"+total.toString()),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
             children: [
               ElevatedButton(onPressed: (){
                 _add();
               }, child: Text("+")),
               const SizedBox(
                 width: 30,
               ),
               ElevatedButton(onPressed: (){
                 _sub();
               }, child: Text("-")),
             ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  _mul();
                }, child: Text("*")),
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton(onPressed: (){
                  _div();
                }, child: Text("/")),
              ],

            ),



          ],
        ),
      ),



    );
  }
}
