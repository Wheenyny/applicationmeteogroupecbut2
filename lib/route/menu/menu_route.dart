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

        //ajouter la partie d'affichage de la température grace a l'api

        children: [
          BottomNavigationBar(
            backgroundColor: Colors.grey.shade300,
            iconSize: 45,
            fixedColor: Colors.blue.shade700,
            unselectedItemColor: Colors.green.shade700,
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