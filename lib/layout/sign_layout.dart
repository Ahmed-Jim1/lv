import 'package:flutter/material.dart';
import 'package:lv/layout/home_layout.dart';
import 'package:lv/shared/styles/color.dart';

class SignLayout extends StatefulWidget {
  const SignLayout({Key? key}) : super(key: key);

  @override
  State<SignLayout> createState() => _SignLayoutState();
}

class _SignLayoutState extends State<SignLayout> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.28
              ,
              child: Stack(
                children: [
                  Align(
                    child: Image.asset('assets/images/topRight.png',height: 180,width: 150 ,),
                    alignment: AlignmentDirectional.topEnd,
                  ),
                  Positioned(

                     top: 150,
                     right: 140,
                     child: Container(
                      width: 120,
                      height: 90,
                      child: Image.asset('assets/images/Logo.png') ,
                  ),
                   ),


                ],
              ),
            ),
            TabBar(
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 3.0,color: DEFAULTCOLOR, ),
                    insets: EdgeInsets.symmetric(horizontal:44.0)
                ),


                indicatorWeight: 2,
                labelPadding: EdgeInsetsDirectional.only(bottom: 10),

                unselectedLabelColor: Colors.black,
                labelColor: DEFAULTCOLOR,
                tabs:  [
                  Text(
                    'Sign in',
                    style: TextStyle(
                        fontSize:18
                    ),

                  ),
                  Text(
                    'Login'
                    ,
                    style: TextStyle(
                        fontSize:18
                    ),
                  ),
                ] ),
            SizedBox(height: 10,),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height*0.25,
                width: double.infinity,
                child: TabBarView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ListView(
                          physics: BouncingScrollPhysics(), //scrol

                          children: [


                            Row(
                              children: [

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('First Name'),
                                    SizedBox(height: 5,),

                                    Container(
                                      width: MediaQuery.of(context).size.width*.42,
                                      child: TextFormField(
                                        keyboardType: TextInputType.emailAddress,
                                        onFieldSubmitted: (String value) {
                                          print(value);
                                        },
                                        onChanged: (String value) {
                                          print(value);
                                        },
                                        decoration: InputDecoration(

                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFF979797)
                                            ),),

                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(5)
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [

                                    Text('Last Name'),
                                    SizedBox(height: 5,),

                                    Container(
                                      width: MediaQuery.of(context).size.width*.42,
                                      child: TextFormField(
                                        keyboardType: TextInputType.emailAddress,
                                        onFieldSubmitted: (String value) {
                                          print(value);
                                        },
                                        onChanged: (String value) {
                                          print(value);
                                        },
                                        decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFF979797)
                                            ),),

                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(5)
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),


                              ],
                            ),
                            SizedBox(height:8,),
                            Text('Email'),
                            SizedBox(height:8 ,),
                            TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              onFieldSubmitted: (String value) {
                                print(value);
                              },
                              onChanged: (String value) {
                                print(value);
                              },
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF979797)
                                  ),),

                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)
                                ),
                              ),
                            ),
                            SizedBox(height:8 ,),

                            Text('Password'),
                            SizedBox(height: 8,),
                            TextFormField(


                              keyboardType: TextInputType.visiblePassword,
                              onFieldSubmitted: (String value) {
                                print(value);
                              },
                              onChanged: (String value) {
                                print(value);
                              },
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF979797)
                                  ),),

                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)
                                ),
                              ),
                            ),
                            SizedBox(height:8 ,),
                            Text('Confirm Password'),
                            SizedBox(height: 8,),
                            TextFormField(


                              keyboardType: TextInputType.visiblePassword,
                              onFieldSubmitted: (String value) {
                                print(value);
                              },
                              onChanged: (String value) {
                                print(value);
                              },
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF979797)
                                  ),),

                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)
                                ),
                              ),
                            ),
                            SizedBox(height:20,),
                            Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)
                                ,color: Color(0xFF1ABC00),
                              ),
                              child: MaterialButton(
                                onPressed: (){
                                  setState(() {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context)=> HomeLayout()));
                                  });
                                },
                                child: Text('Sign In',style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white
                                ),),
                              ),
                            ),

                          ],
                        ),
                      )  ,
                      Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  children: [
                    Text('Email'),
                    SizedBox(height: 5,),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.grey,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      onChanged: (String value) {
                        print(value);
                      },

                      decoration: InputDecoration(

                        focusedBorder: OutlineInputBorder(

                          borderSide: BorderSide(
                              color: Color(0xFF979797)
                          ),),

                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                    ),
                    SizedBox(height:20,),
                    Text('Password'),
                    SizedBox(height: 5,),
                    TextFormField(


                      keyboardType: TextInputType.visiblePassword,
                      cursorColor: Colors.grey,

                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      onChanged: (String value) {
                        print(value);
                      },

                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xFF979797)
                          ),
                        ),


                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                    ),
                    SizedBox(height:20,),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5)
                        ,color: DEFAULTCOLOR,
                      ),
                      child: MaterialButton(

                        onPressed: (){
                          setState(() {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> HomeLayout()));
                          });
                        },

                        child: Text('Login',style: TextStyle(
                            fontSize: 15,
                            color: Colors.white
                        ),),
                      ),
                    ),

                  ],
                ),
              ),

                    ]),
              ),
            ),
            Visibility(
              visible: MediaQuery.of(context).viewInsets.bottom==0,
              child: Column(
                children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 1,
                      color: Color(0xFF979797),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text('or continue with',
                        style: TextStyle
                          (color: Color(0xFF979797)),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 1,
                      color: Color(0xFF979797),
                    ),


                  ],),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 20, backgroundColor: Colors.white,
                      child: Image.asset('assets/images/Google.png')),
                  SizedBox(width: 10,),
                  CircleAvatar(radius: 14, backgroundColor: Colors.white,
                      child: Image.asset('assets/images/Facebook.png'))


                ],
              ),
                ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Visibility(
                visible: MediaQuery.of(context).viewInsets.bottom==0,
                child: Align(
                  child: Image.asset(
                    'assets/images/bottomStart.png'
                    ,height: 110
                    ,width: 150 ,),
                  alignment: AlignmentDirectional.bottomStart,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
