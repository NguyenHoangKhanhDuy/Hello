
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        foregroundColor: Colors.black,
        title: const Text('Nguyễn Hoàng Khánh Duy'),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.face),
            onPressed: (){
              Scaffold.of(context).openDrawer();
          },
          )
        ),

        actions: [
          const Icon(Icons.male),
          Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.female),
                onPressed: (){
                  Scaffold.of(context).openEndDrawer();
                },
              )
          ),
        ],
      ),
     drawer: Drawer(
       child: ElevatedButton(
         onPressed: (){
           Navigator.pop(context);
         },
         child: const Text('OK')),
       ),
      endDrawer: Drawer(
        child: ElevatedButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Close')),
      ),
      body: const Center(child: Text('Hello Word',style: TextStyle(fontSize: 50),)),
      floatingActionButton:  FloatingActionButton(child: const Center(child: Icon(Icons.share)),
      onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: const BottomAppBar(

        child: Text('Happy',style: TextStyle(fontSize: 30),),

      ),
    );
  }
}





