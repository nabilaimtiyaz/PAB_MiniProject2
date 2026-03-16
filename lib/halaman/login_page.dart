import 'package:flutter/material.dart';
import '../tema/colors.dart';
import 'homepage.dart';
import 'register_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginPage extends StatelessWidget {

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final supabase = Supabase.instance.client;

  void login(BuildContext context) async {

    try {

      await supabase.auth.signInWithPassword(
        email: email.text.trim(),
        password: password.text.trim(),
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomePage()),
      );

    } catch (e) {

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Login gagal, Silahkan periksa kembali email atau password anda"),
          backgroundColor: Colors.red,
        ),
      );

    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      body: Row(
        children: [

          Expanded(
            child: Container(
              color: AppColors.latte,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Icon(
                      Icons.school,
                      size: 80,
                      color: Colors.white,
                    ),

                    SizedBox(height:20),

                    Text(
                      "Hello Precious People!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      "Welcome to Intellecta",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),

          Expanded(
            child: Center(
              child: Container(
                width: 350,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.stone.withOpacity(0.5),
                      blurRadius: 20,
                      offset: Offset(0,10),
                    )
                  ]
                ),

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize:28,
                        fontWeight:FontWeight.bold,
                        color:AppColors.latte,
                      ),
                    ),

                    SizedBox(height:30),

                    TextField(
                      controller: email,
                      decoration: InputDecoration(
                        labelText: "Email",
                        filled: true,
                        fillColor: AppColors.ivory,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),

                    SizedBox(height:15),

                    TextField(
                      controller: password,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        filled: true,
                        fillColor: AppColors.ivory,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),

                    SizedBox(height:25),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.rose,
                        minimumSize: Size(double.infinity,50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                      ),
                      onPressed: (){
                        login(context); 
                      },
                      child: Text("Login"),
                    ),

                    SizedBox(height:10),

                    TextButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => RegisterPage())
                        );
                      },
                      child: Text(
                        "Create Account",
                        style: TextStyle(color: AppColors.latte),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}