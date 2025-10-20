import 'package:flutter/material.dart';

String nombre = "Alex Johnson";
String cargo = "Diseñador de interfaces";
String desc = "Creative designer with over 5 years of experience creating functional and aesthetic digital experiences";

int proyectos = 127;
int seguidores = 256;
int reconocimientos = 26;
  
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(title: Text('Tarjeta de Presentación')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,

              children: [
                Container(
                  height: 90.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xff1f005c),
                        Color(0xff5b0060),
                        Color(0xff870160),
                        Color(0xffac255e),
                        Color(0xffca485c),
                        Color(0xffe16b5c),
                        Color(0xfff39060),
                        Color(0xffffb56b),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 25.0,
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50.0),
            Text(
              'Alex Johnson',
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),

            Text(
              'Interface Designer',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),

            Container(
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Text(
                'Passionate about creating intuitive and beautiful user experiences.',
                textAlign: TextAlign.center,
              ),
            ),

            Container(
              color: Colors.white,
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        proyectos.toString(),
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Text('# of Projects'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        seguidores.toString(),
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Text('Followers'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        reconocimientos.toString(),
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Text('Recognitions'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.facebook, color: Colors.deepOrangeAccent),
                SizedBox(width: 14.0),
                Icon(Icons.alternate_email, color: Colors.deepOrangeAccent),
                SizedBox(width: 14.0),
                Icon(Icons.public, color: Colors.deepOrangeAccent),
                SizedBox(width: 14.0),
                Icon(Icons.phone, color: Colors.deepOrangeAccent),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    proyectos + 1;
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(fontSize: 26.0),
                  ),
                  child: Text("Contact Me"),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Container(
              color: const Color.fromARGB(255, 239, 239, 239),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: [
                      Icon(Icons.share),
                      SizedBox(width: 14.0),
                      Text('Share'),
                    ],
                  ),
                  
                  Row(
                    children: [
                      Icon(Icons.file_download),
                      SizedBox(width: 14.0),
                      Text('Save'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
