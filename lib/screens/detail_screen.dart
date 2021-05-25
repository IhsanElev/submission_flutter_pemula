import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:submission/model/food.dart';

class DetailScreen extends StatelessWidget {
  final FoodData food;

  DetailScreen({required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          food.name,
          style: GoogleFonts.poppins().copyWith(color: Colors.black)
      ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 8,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(food.thumbnail),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            food.name,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          IconButton(
                              icon: Icon(Icons.message), onPressed: () {})
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '${food.rate}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 24.0),
                      child: Text('Komposisi'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(food.ingredients,
                    ),
                    ),],
                ),
              )),
               Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: food.imageAsset.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                  );
                }).toList(),
              )),
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18), topRight: Radius.circular(18)),
              child: Container(
                color: Colors.black54,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\Rp' + '${food.price}' + '-,',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      
                      BookingStatus()
                    ],
                  ),
                ),
              ),
            ),
          ),
         
        ],
      ),
      
    );
  }
}

class BookingStatus extends StatefulWidget {
  @override
  _BookingStatusState createState() => _BookingStatusState();
}

class _BookingStatusState extends State<BookingStatus> {
  bool isBooking = false;
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 100,
      // ignore: deprecated_member_use
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        color: isBooking ? Colors.grey : Colors.green,
        child: isBooking
            ? Text('Silahkan Menunggu ✓', style: TextStyle(color: Colors.white))
            : Text('Pesan', style: TextStyle(color: Colors.white)),
        onPressed: () {
          setState(() {
            isBooking = !isBooking;
          });
        },
      ),
    );
  }
}