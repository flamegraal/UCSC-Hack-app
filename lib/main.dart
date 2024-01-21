import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chatbot.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VigilantEye',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.playfairDisplayTextTheme(
          Theme.of(context).textTheme,
        ),
        appBarTheme: AppBarTheme(
          color: Colors.deepPurple,
        ),
        bottomAppBarColor: Colors.deepPurple,
      ),
      home: MyHomePage(),
      routes: {
        '/pageOne': (context) => PageOne(),
        '/pageTwo': (context) => PageTwo(),
        '/pageThree': (context) => PageThree(),
        '/chatbot': (context) => ChatScreen(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Image.asset(
                'images/vigilant_eye.webp', // Replace with your logo image path
                height: 40, // Set the height of your logo
                width: 40, // Set the width of your logo
              ),
            ),
            Text('VigilantEye Home', style: GoogleFonts.workSans()),
          ],
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'VigilantEye: Advanced Object Detection for Weapon Detection in School.',
            style: modernTextStyle(),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepPurple,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.security, color: Colors.white),
              onPressed: () => Navigator.pushNamed(context, '/pageOne'),
              tooltip: 'Go to Page One',
            ),
            IconButton(
              icon: Icon(Icons.camera_alt, color: Colors.white),
              onPressed: () => Navigator.pushNamed(context, '/pageTwo'),
              tooltip: 'Go to Page Two',
            ),
            IconButton(
              icon: Icon(Icons.analytics, color: Colors.white),
              onPressed: () => Navigator.pushNamed(context, '/pageThree'),
              tooltip: 'Go to Page Three',
            ),
            IconButton(
              icon: Icon(Icons.chat, color: Colors.white),
              onPressed: () => Navigator.pushNamed(context, '/chatbot'),
              tooltip: 'Go to Chatbot',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () {
          Navigator.of(context).popUntil((route) => route.isFirst);
        },
        tooltip: 'Back to Home',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  TextStyle modernTextStyle() {
    return GoogleFonts.playfairDisplay(
        fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white);
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('VigilantEye Security', style: GoogleFonts.playfairDisplay()),
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Security Page: Engage in vigilant monitoring with cutting-edge technology.',
            style: modernTextStyle(),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepPurple,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.security, color: Colors.white),
              onPressed: () => Navigator.pushNamed(context, '/pageOne'),
              tooltip: 'Go to Page One',
            ),
            IconButton(
              icon: Icon(Icons.camera_alt, color: Colors.white),
              onPressed: () => Navigator.pushNamed(context, '/pageTwo'),
              tooltip: 'Go to Page Two',
            ),
            IconButton(
              icon: Icon(Icons.analytics, color: Colors.white),
              onPressed: () => Navigator.pushNamed(context, '/pageThree'),
              tooltip: 'Go to Page Three',
            ),
            IconButton(
              icon: Icon(Icons.chat, color: Colors.white),
              onPressed: () => Navigator.pushNamed(context, '/chatbot'),
              tooltip: 'Go to Chatbot',
            ),
          ],
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('VigilantEye Detection', style: GoogleFonts.playfairDisplay()),
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Detection Page: Utilize sophisticated algorithms for accurate contraband detection.',
            style: modernTextStyle(),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepPurple,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.security, color: Colors.white),
              onPressed: () => Navigator.pushNamed(context, '/pageOne'),
              tooltip: 'Go to Page One',
            ),
            IconButton(
              icon: Icon(Icons.camera_alt, color: Colors.white),
              onPressed: () => Navigator.pushNamed(context, '/pageTwo'),
              tooltip: 'Go to Page Two',
            ),
            IconButton(
              icon: Icon(Icons.analytics, color: Colors.white),
              onPressed: () => Navigator.pushNamed(context, '/pageThree'),
              tooltip: 'Go to Page Three',
            ),
            IconButton(
              icon: Icon(Icons.chat, color: Colors.white),
              onPressed: () => Navigator.pushNamed(context, '/chatbot'),
              tooltip: 'Go to Chatbot',
            ),
          ],
        ),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('VigilantEye Analytics', style: GoogleFonts.playfairDisplay()),
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Analytics Page: Detailed insights and analytics for proactive contraband management.',
            style: modernTextStyle(),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepPurple,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.security, color: Colors.white),
              onPressed: () => Navigator.pushNamed(context, '/pageOne'),
              tooltip: 'Go to Page One',
            ),
            IconButton(
              icon: Icon(Icons.camera_alt, color: Colors.white),
              onPressed: () => Navigator.pushNamed(context, '/pageTwo'),
              tooltip: 'Go to Page Two',
            ),
            IconButton(
              icon: Icon(Icons.analytics, color: Colors.white),
              onPressed: () => Navigator.pushNamed(context, '/pageThree'),
              tooltip: 'Go to Page Three',
            ),
            IconButton(
              icon: Icon(Icons.chat, color: Colors.white),
              onPressed: () => Navigator.pushNamed(context, '/chatbot'),
              tooltip: 'Go to Chatbot',
            ),
          ],
        ),
      ),
    );
  }
}

TextStyle modernTextStyle() {
  return GoogleFonts.playfairDisplay(
      fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white);
}
