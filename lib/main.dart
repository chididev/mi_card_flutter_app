import 'package:flutter/material.dart';

//The main function is the starting point of all our apps.
void main() {
  runApp(const MyApp());
}

//The stateless widget gives us access to the Google Flutter hot reload
//and hot refresh properties.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //This is a simple flutter app which displays a developer's contact details.
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            //The mainaxisalignment centers the column in the body the materialapp.
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/dp.jpg'),
              ),
              Text(
                'Enekwe Chidiebere Henry',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                indent: 50.0,
                endIndent: 50.0,
                thickness: 1.0,
                color: Colors.white,
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: ListTile(
                    tileColor: Colors.white,
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                      size: 30.0,
                    ),
                    title: Text(
                      '+234 903 790 9731',
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: ListTile(
                    tileColor: Colors.white,
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                      size: 30.0,
                    ),
                    title: Text(
                      'chidieberehenry31@gmail.com',
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 20.0,
                      ),
                    ),
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
