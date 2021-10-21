import 'dart:html';

import 'package:flutter/material.dart';

// void main me MaterialApp() lia usky home me HomePage() ky name sy class banai hy
// yani main function me Homepage() ky name ki class call karai hy

void main() {
  runApp(
    MaterialApp(
      
      debugShowCheckedModeBanner: false,
      
      home: Homepage(),
      
    ),
  );
}

// ye meri class hy
// MaterialApp uper dy chuka hun isi liye yahan scaffold return karaya hy
// Scaffold me i body body me dia Container
// Container ko decoration ki property di usme BoxDecoration ky widget me gradient ki property
// gradient me Linear gradient ka widget usme colors ki property di hy
// ak sy zyada colors use kiye hyn list waly bracket laga kr

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      
      
      body: 
      Container(
        // double infinity dene page ki pori width leli
        //wrna phly jitna text tha container utni width ly raha tha
        width: double.infinity,
        
        padding: EdgeInsets.symmetric(vertical: 30),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                // begin Alignment sy gradient ki postion batai hy top sy orange wala center sy yellow wala
                begin: Alignment.topCenter,
                colors: [
              Color(0xFFE65100),
              Color(0xFFEF6C00),
              Color(0xFFFFA726),
            ])),
        child: Column(
          // column ki jo horizontal wali alignment hyna ussy start sy krdo
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Welcome Back",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      // Text Ki Styling Style or TextStyle laga kr hogi
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded
                // Expanded use krty hyn Extra space ko fill krny ky liye
                (
                    child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
                // Container ko Border Radius aesy dety hyn.
              ),
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                        padding: EdgeInsets.all(10),
                        // padding direct dengy box decoration ki need nh hy
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(225, 95, 27, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10))
                            ]),
                        // issi Container me Child Banaya to kahani issi Container ky Ander ghumy gi
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                // is Container ka bottom border style kia srf aesy
                                border: Border(
                                  bottom: BorderSide(color: Color(0xFFEEEEEE)),
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Email or Phone number",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                // is Container ka bottom border style kia srf aesy
                                border: Border(
                                  bottom: BorderSide(color: Color(0xFFEEEEEE)),
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none,
                                  
                                ),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    Text("Forget Password?",
                        style: TextStyle(color: Colors.grey)),
      
                    SizedBox(
                      height: 40,
                    ),
                    // Login Button
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xFFE65100),
                           ),
                           child: Center(
                             child: Text("Login", style: TextStyle(color: Colors.white,  fontWeight: FontWeight.bold),),
                           ),
                           
                           
                           ),
      
                           SizedBox(height: 30,),
                           Text("Continue with Social Media ", style: TextStyle(color: Colors.grey,  fontWeight: FontWeight.bold),),
                            SizedBox(height: 30,), 
                           Row(
                             children: [
                               Expanded(
                                 child: Container(
                                   height: 50,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(50),
                                     color: Colors.blue,
                                     
                                   ),
                                    child: Center(
                             child: Text("FaceBook", style: TextStyle(color: Colors.white,  fontWeight: FontWeight.bold),),
                           ),
      
      
                                 ),
                               ),
                               SizedBox(width: 30 ,),
      
      
                               Expanded(child: Container(
                                 height: 50,
                                 decoration:BoxDecoration(
                                   borderRadius: BorderRadius.circular(50),
                                   color:Colors.black,
                                 ),
      
                                  child: Center(
                             child: Text("Git HUb", style: TextStyle(color: Colors.white,  fontWeight: FontWeight.bold),),
                           ),
      
                               ),),
                             ],
                           )
      
      
      
      
      
      
      
      
                  
                  ],
                ),  
              ),
            ))
          ],
        ),
      ),
    );
  }
}
