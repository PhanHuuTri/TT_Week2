import 'package:flutter/material.dart';
import 'maincontent/maincontent.dart';
import 'drawer/drawer.dart';
import 'bottombar.dart';
void main() {
  runApp(const MaterialApp(home:MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: Builder(
          builder: (context)=>IconButton(
            onPressed: (){
              Scaffold.of(context).openDrawer();
            },
          icon:const Icon(Icons.menu),
        ),
        ),
        title:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Home'),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ],
        )
      ),
      drawer: const Drawer_user(),
      body: const Main_Content(),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg_bottom_bar.png'),
            fit: BoxFit.fill
          ),
        ),
        child: const BottomBar(),
      ),
    );
  }
}