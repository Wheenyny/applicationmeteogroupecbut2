import 'package:flutter/material.dart';

import 'home_route_body.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("APP METEO"),
      ),
      body: const HomeRouteBody(),
    );
  }
}