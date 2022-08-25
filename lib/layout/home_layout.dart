import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:lv/modules/cart_empty.dart';
import 'package:lv/shared/styles/color.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {

  @override
  Widget build(BuildContext context) {
    late int currentInedx = 1;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(

          index: 2,
          height: 55.0,
          items: <Widget>[

            CircleAvatar(backgroundColor: Colors.transparent,radius: 15 ,child: Image.asset('assets/images/leave 1.png',fit: BoxFit.cover,)),
            CircleAvatar(backgroundColor: Colors.transparent,radius: 12 ,child: Image.asset('assets/images/qrr.png',)),
            CircleAvatar(backgroundColor: Colors.transparent,radius: 15 ,child: Image.asset('assets/images/home.png',fit: BoxFit.cover,color: Colors.black,)),
            Icon(Icons.notifications_none_sharp,color: Colors.black,size: 23,),
            CircleAvatar(backgroundColor: Colors.transparent,radius: 15 ,child: Icon(Icons.person_outline_rounded,color: Colors.black,)),



          ],
          color: Colors.white,
          buttonBackgroundColor: Color(0xFF1ABC00),
          backgroundColor:Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {

            });
          },
          letIndexChange: (index) => true,
        ),

        backgroundColor: Colors.white,
        body :   DefaultTabController(
          length: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 120,
                  height: 90,
                  child: Image.asset('assets/images/Logo.png') ,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      width: 250,
                      height: 50,

                      decoration: BoxDecoration(
                        border: Border.all(color:Color(0xFF979797) ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: MaterialButton(

                        child: Row(
                          children: [
                            Icon(Icons.search,color: Color(0xFF979797),),
                            Text(
                              'Search',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF979797),

                              ),
                            ),
                          ],
                        ),

                        onPressed: (){


                        },

                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF1ABC00),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: IconButton(
                        onPressed: (){
                          setState(() {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context)=> CartEmbty()));
                          });

                        },
                        icon: Icon(Icons.shopping_cart,color: Colors.white,),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 50,

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TabBar(
                      indicator: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 2,
                          color: DEFAULTCOLOR
                        )
                      ),
                      labelColor:  Color(0xFF1ABC00),
                      unselectedLabelColor: Color(0xFF979797) ,
                      indicatorColor: Colors.transparent,
                      labelPadding: EdgeInsets.symmetric(horizontal: 25),
                      isScrollable: true,
                      tabs:[
                        Text('All'),
                        Text('Plants'),
                        Text('Seeds'),
                        Text('Tools'),
                        Text('data'),
                      ]
                  ),
                ),
              ),








            ],
          ),
        ),

      ),
    );
  }
}
