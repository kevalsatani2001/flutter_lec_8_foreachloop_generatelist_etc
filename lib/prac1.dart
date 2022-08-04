import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class pract1 extends StatefulWidget {
  const pract1({Key? key}) : super(key: key);

  @override
  State<pract1> createState() => _pract1State();
}

class _pract1State extends State<pract1> {
  List<String> names = ["A", "B", "C", "D", "m", "F", "G", "H", "I"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.search),
        title: Text("data"),
        actions: [Icon(Icons.circle)],
      ),
      body: Center(
        child: Card(
          elevation: 6,
          child: SizedBox(
            child: ListView(
              //children:names.map((e) => item(e)).toList(),
              children: generateList(),
            ),
          ),
        ),
      ),
      /*floatingActionButton: FloatingActionButton(){

        },*/

      // List<Widget> generateList(){
      //   List<Widget> list=[];
      //   names.forEach((element){
      //     list.add(iteam(element));
      //     list.add(Container(color:Colors.red,height:10));
      //   });
      //   return list;
      // }
    );
  }

  Widget item(text) => Container(
        height: 100,
        width: 100,
        color: Colors.green,
        alignment: Alignment.center,
        margin: const EdgeInsets.all(5),
        child: Text('$text'),
      );

  List<Widget> generateList() {
    List<Widget> list = [];
    names.forEach((element) {
      list.add(item("$element"));
      list.add(Container(
        height: 100,
        width: 100,
        color: Colors.red,
      ));
    });
    return list;
  }
}
