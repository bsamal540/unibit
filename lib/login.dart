import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:  AppBar(),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
         // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.1, // 10% of the screen height
        horizontal: MediaQuery.of(context).size.width * 0.2, // 20% of the screen width
    ),

                child: Image.asset("assets/logo.png"),
              ),
            ),
            Container(
                width: double.infinity,
                
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: Colors.white,
                    elevation: 0,
                    child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    child: Text(
                                  "Login",
                                  style: TextStyle(fontSize: 30),
                                ))),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  // horizontal: 0,
                                  vertical: 8),
                              child: TextFormField(
                                enabled: true,
                                controller: mobileNumberController,
                                decoration:  const InputDecoration(
                                  border:InputBorder.none,
                                  prefixIcon: Icon(Icons.phone),
                                  labelText: "Mobile number",
                                  hintStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10),
                                  fillColor: Colors.white,
                                  filled: true,
                                ),
                                // style: ,
                                keyboardType: TextInputType.number,
                                maxLength: 10,
                                maxLengthEnforcement: MaxLengthEnforcement
                                    .enforced,
                              ),
                            ),
                            // SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  // horizontal: 0,
                                  vertical: 8),
                              child: TextFormField(
                                enabled: true,

                                controller: passwordController,
                                decoration: const InputDecoration(
                                border:InputBorder.none,

                                  prefixIcon: Icon(Icons.lock),
                                  labelText: "Password",
                                  hintStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10),
                                  fillColor: Colors.white,
                                  filled: true,

                                ),
                                // style: ,
                                keyboardType: TextInputType.number,
                                maxLengthEnforcement: MaxLengthEnforcement
                                    .truncateAfterCompositionEnds,
                              ),
                            ),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    child: Text(
                                  "Forget Password?",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.orange),
                                ))),
                            SizedBox(height: 8.0),
                            ElevatedButton(
                              onPressed: () => {},
                              child: Text("Login"),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.orange),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        25), // Set the circular radius here
                                  ),
                                ),
                                minimumSize: MaterialStateProperty.all(
                                    Size(double.infinity, 40)),
                              ),
                            ),
                            SizedBox(height: 16.0),
                            ElevatedButton(
                              onPressed: () => {},
                              child: Text("Login with otp"),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromARGB(255, 11, 90, 209)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        25), // Set the circular radius here
                                  ),
                                ),
                                minimumSize: MaterialStateProperty.all(
                                    Size(double.infinity, 40)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: RichText(
                                  text: TextSpan(
                                text: "Don't have an account?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: <TextSpan>[
                                            TextSpan(
                                              text: 'Signup now',
                                              style: TextStyle(
                                                color: Colors.orange,
                                              
                                              ),
                                            ),
                                            
                                ]
                              )
                              ),
                            )
                            
                          ],
                        )
                        )
                        )
                        ),
                        
          ],
        ),
      ),
    );
  }
}
