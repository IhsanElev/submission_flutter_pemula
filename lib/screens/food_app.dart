import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:submission/model/food.dart';
import 'detail_screen.dart';
class FoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food App'),
      ),
      body: ListView.builder( 
        itemBuilder: (context, index) {
          final FoodData food = foodDataList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(food: food);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.network(food.thumbnail),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            food.name,
                            style: GoogleFonts.poppins().copyWith(fontSize: 16)
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(food.ingredients,
                          style: GoogleFonts.poppins().copyWith(fontSize: 16)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: foodDataList.length,
      ),
    );
  }
}