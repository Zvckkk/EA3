import 'package:ea3_mycard/custom_card.dart';
import 'package:ea3_mycard/custom_column.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const double avatarSize=100.0;
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration:const BoxDecoration(
            image: DecorationImage(
              image:AssetImage('image/gate.gif'),
              fit:BoxFit.cover
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: ListView(
              children: [
                const Row(crossAxisAlignment: CrossAxisAlignment.center,),
                Container(
                  width: avatarSize, 
                  height: avatarSize,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('image/Profile.jpg')
                    ),
                  ),
                ),
                const SizedBox(height: 20.0,),
                const CustomCard(
                  icon: Icon(
                    Icons.person,
                    size: 30.0,
                  ), 
                  text: "Ace Alexander R. Ilog",
                ),
                const SizedBox(height: 10.0,),
                const CustomCard(
                  icon: Icon(
                    Icons.email,
                    size: 30.0,
                  ), 
                  text: "ilog.acealexander@gmail.com"
                ),
                const SizedBox(height: 10.0,),
                const CustomColumn(
                  icon: Icon(Icons.phone), 
                  text: '+63 977 744 9336',
                ),
                const SizedBox(height: 10.0,),
                const CustomColumn(
                  icon: Icon(Icons.star),
                  text: 'Hobbies',
                  children: [
                    Text('- Play Video Games',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontFamily: 'Playfair'
                       ),
                    ),
                    Text('- Watching Horror Movies',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontFamily: 'Playfair'
                       ),
                    ),
                    Text('- Reading Non-Fiction books',
                    style:  TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontFamily: 'Playfair'
                       ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0,),
                const CustomColumn(
                  icon: Icon(Icons.info),
                  text: 'Other Information',
                  children: [
                    Text('Course: BS Computer Engineering',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontFamily: 'Playfair'
                       ),
                    ),
                    Text('Address: Brgy.1, Indang, Cavite',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontFamily: 'Playfair'
                       ),
                    ),
                    Text('Birthday: December 21, 2001',
                    style:  TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontFamily: 'Playfair'
                       ),
                    ),
                    Text('Highest Attained Education: Undergrad',
                    style:  TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontFamily: 'Playfair'
                       ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      );
  }
}


  
