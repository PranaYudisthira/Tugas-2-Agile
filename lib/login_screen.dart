import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:myapp/components/mybutton.dart';
import 'package:myapp/components/textfield.dart';
import 'package:myapp/home.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final usernameController = TextEditingController();
  final passswordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 75,
              ),
              // logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(
                height: 75,
              ),

              // selamat datang
              Text(
                "Selamat Datang di",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
              const SizedBox(
                height: 25,
              ),

              // username,
              mytextfield(
                controller: usernameController,
                hintText: "Nama Pengguna",
                obsecureText: false,
              ),

              SizedBox(
                height: 20,
              ),
              // password
              mytextfield(
                controller: passswordController,
                hintText: "Kata Sandi",
                obsecureText: true,
              ),
              //login button
              SizedBox(
                height: 20,
              ),
              mybutton(onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              }),

              Divider(
                thickness: 5,
              )
              //register button
            ],
          ),
        ),
      ),
    );
  }
}
