import 'package:flutter/material.dart';

class CartEmbty extends StatelessWidget {
  const CartEmbty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(height: 20,),
              Text(

                'My Cart',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                    ,fontSize:25,
                    color: Colors.black
                ),

              ),
              SizedBox(height: 100,),

              Center(child: Image.asset('lib/assets/Frame.png')),
              SizedBox(height: 20,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(child: Text(
                    'Your Cart Is Empty',
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
                  // Container(width: MediaQuery.of(context).size.width*0.70,
                  //   child: Text(
                  //     'Sorry, the keyword you entered cannot be found, please check again or search with another keyword.'
                  //         ,textAlign: TextAlign.center,
                  //     style: TextStyle(
                  //       fontSize: 20,
                  //       color: Color(0xFF979797),
                  //     ),
                  //   ),
                  // )
                ],
              ),


            ],
          ),
        ),

      ),
    );
  }
}
