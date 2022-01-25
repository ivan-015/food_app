import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/bloc/food_item/food_item_bloc.dart';
import 'package:food_app_components/bloc/food_item/food_item_bloc.dart';
import 'package:food_app_components/food_app_components.dart';

class FoodApp extends StatefulWidget {
  const FoodApp({Key? key}) : super(key: key);

  @override
  _FoodAppState createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<BaseFoodItemBloc>(
        create: (context) => FoodItemBloc(),
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: LayoutBuilder(
                builder: (context, constraints) => Foodcard(
                  constraints,
                  ovrFoodname: 'Parabeac Burger',
                  ovrRestaurantname: 'Parabeac Restaurant',
                  ovr999: '\$1,000',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
