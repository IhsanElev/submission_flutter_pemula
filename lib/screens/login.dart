import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:submission/screens/food_app.dart';

class LoginPage extends StatefulWidget {


  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();

  String username = '';
  String password = '';
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    'Selamat Datang \n Silahkan Login',
                    style: GoogleFonts.roboto().copyWith(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                    textDirection: TextDirection.ltr,
                  ),
                ),
                imageField(),
                emailField(),
                passwordField(),
                submitButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget imageField() {
    return Container(
      
      child: Image.asset('images/login.jpg',
      width: 400,
      height: 300,
      ),
    );
  }

  Widget emailField() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return ('username tidak boleh kosong');
          }
          return null;
        },
        controller: userNameController,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          hintText: 'admin',
          labelText: 'masukkan username',
        ),
      ),
    );
  }

  Widget passwordField() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return ('password tidak boleh kosong');
          }
          return null;
        },
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          hintText: 'admin',
          labelText: 'masukkan password',
        ),
      ),
    );
  }

  Widget submitButton() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: () {
          check();
        },
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)))),
        child: Text(
          'Login',
          style: GoogleFonts.roboto().copyWith(fontSize: 16),
        ),
      ),
    );
  }

  void check() {
    username = userNameController.text;
    password = passwordController.text;

    if (_formkey.currentState!.validate()) {
      if (username != 'admin' && password != 'admin') {
        print('username atau password salah');
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => FoodApp()));
      }
    }
  }
}
