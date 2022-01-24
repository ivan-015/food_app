import 'package:flutter/material.dart';
import 'package:foodapp_comp/widgets/symbols/foodcard.g.dart';

class FoodApp extends StatefulWidget {
  const FoodApp({Key? key}) : super(key: key);

  @override
  _FoodAppState createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: LayoutBuilder(
              builder: (context, constraints) => Foodcard(constraints),
            ),
          )
        ],
      ),
    );
  }
}
