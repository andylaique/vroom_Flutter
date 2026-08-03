import 'package:flutter/material.dart';
import 'package:vroom/screens/signup_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginFormKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _hidePassword = true;

    @override
  void dispose() {                                                                                                          
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 192, 250),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Form(
            key: _loginFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,       
              children: [
                Image.asset("assets/images/logo.png", width: 160, height: 160),

                SizedBox(height: 16),

                Text(
                  'Login',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 90, 1, 108),),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 50),

                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Enter your email address';
                    }

                    final cleanEmail = value.trim();

                    if (cleanEmail != cleanEmail.toLowerCase()) {
                      return 'Email must be in small letters only';
                    }
                    
                    if (!cleanEmail.contains('@') ||
                        cleanEmail.indexOf('@') !=
                            cleanEmail.lastIndexOf('@')) {
                      return 'Enter a valid email address';
                    }

                    
                    if (cleanEmail.startsWith('@') ||
                        cleanEmail.endsWith('@')) {
                      return 'Enter a valid email address';
                    }

                   
                    final atIndex = cleanEmail.indexOf('@');
                    final domainPart = cleanEmail.substring(atIndex + 1);

                    if (!domainPart.contains('.') ||
                        domainPart.startsWith('.') ||
                        domainPart.endsWith('.')) {
                      return 'Enter a valid email domain (e.g., .com)';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                ),

                SizedBox(height: 50),

                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _hidePassword = !_hidePassword;
                        });
                      },
                      icon: Icon(
                        _hidePassword
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your password';
                    }
                    if (value.length < 8) {
                      return 'Password must be at least 8 characters long';
                    }

                    bool hasUppercase = false;
                    bool hasLowercase = false;
                    bool hasDigits = false;
                    
                    const digits = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];

                    for (int i = 0; i < value.length; i++) {
                      String char = value[i];
                      
                      if (digits.contains(char)) {
                        hasDigits = true;
                      } 
                      else if (char.toLowerCase() != char.toUpperCase()) {
                        if (char == char.toUpperCase()) {
                          hasUppercase = true;
                        }
                        if (char == char.toLowerCase()) {
                          hasLowercase = true;
                        }
                      }
                    }

                    if (!hasUppercase) {
                      return 'Password must include at least one uppercase letter';
                    }
                    if (!hasLowercase) {
                      return 'Password must include at least one lowercase letter';
                    }
                    if (!hasDigits) {
                      return 'Password must include at least one number';
                    }
                    return null;
                  },
                  obscureText: _hidePassword,
                ),

                SizedBox(height: 24),

                ElevatedButton(
                  onPressed: () {
                    if(_loginFormKey.currentState!.validate()){

                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(255, 0, 221, 1),

                  ),
                  child: Text('Login',
                  style: TextStyle(color: Colors.white,)),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Not yet registered?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const SignupScreen(), 
                          ),
                        );
                      },
                      child: const Text("Sign up"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


