import 'package:flutter/material.dart';

import '../home/home_route.dart';

class MenuRoute extends StatelessWidget {
  const MenuRoute({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor : Colors.blue.shade200,
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          BottomNavigationBar(
            items: const <BottomNavigationBarItem>[

              BottomNavigationBarItem(
                icon: Icon(Icons.cloud),
                label: 'METEO',
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'VILLES',
              ),

            ],
              fixedColor: Colors.blue.shade900

          ),

        ],

      ),
    );

  }

  void _goToHome(BuildContext context){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeRoute())
    );
  }
}