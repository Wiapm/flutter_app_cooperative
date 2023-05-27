import 'dart:html';

import 'package:flutter/material.dart';
import 'package:project_flutter/models/category.dart';
import '../app_data.dart';

class CategoryTripsScreen extends StatelessWidget {
  static const screenRouter = "category-trips";
  // final String categoryId;
  //final String categoryTitle;
  //const CategoryTripsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final CategoryId = routeArgument['id'];
    final CategoryTitle = routeArgument['title'];
    final filterdTrips = Trips_data.where((trip) {
      return trip.categories.contains(CategoryId);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(CategoryTitle!),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, Index) {
            return Text(filterdTrips[Index].title);
          },
          itemCount: filterdTrips.length,
        ));
  }
}
