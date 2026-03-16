import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../tema/colors.dart';
import 'package:flutter/services.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final phone = TextEditingController();
  final supabase = Supabase.instance.client;

  bool isLoading = false;

  void register() async {

    if(password.text != confirmPassword.text){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Password tidak sama"),
          backgroundColor: Colors.red,
        )
      );
      return;
    }

    try {

      setState(() {
        isLoading = true;
      });

      await supabase.auth.signUp(
        email: email.text.trim(),
        password: password.text.trim(),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Registrasi berhasil! Silakan login."),
          backgroundColor: Colors.green,
        )
      );

      Navigator.pop(context);
    } 
    
    catch (e) {

      String message = "Registrasi gagal";

      if (e is AuthException) {

        if (e.message.contains("Password should be at least 6 characters")) {
          message = "Password minimal 6 karakter";
        } 
        else if (e.message.contains("invalid format")) {
          message = "Format email tidak valid";
        }
        else if (e.message.contains("already registered")) {
          message = "Email sudah terdaftar";
        }
        else {
          message = e.message;
        }
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      body: Center(
        child: Container(
          width: 380,
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
                "Sign Up",
                style: TextStyle(
                  fontSize:28,
                  fontWeight:FontWeight.bold,
                  color:AppColors.latte
                ),
              ),

              SizedBox(height:25),

              buildField(email,"Email"),
              buildField(password,"Password", true),
              buildField(confirmPassword,"Confirm Password", true),
              buildField(phone,"Phone", false, true),

              SizedBox(height:20),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.rose,
                  minimumSize: Size(double.infinity,50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
                onPressed: isLoading ? null : register,
                child: isLoading
                    ? CircularProgressIndicator(color: Colors.white)
                    : Text("Sign Up"),
              ),

              SizedBox(height:15),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text("Already have an account? "),

                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: AppColors.latte,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildField(
    TextEditingController controller,
    String label,
    [bool obscure = false, bool isNumber = false]
    ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextField(
        controller: controller,
        obscureText: obscure,
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
        inputFormatters: isNumber
            ? [FilteringTextInputFormatter.digitsOnly]
            : null,
        decoration: InputDecoration(
          labelText: label,
          filled: true,
          fillColor: AppColors.ivory,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}