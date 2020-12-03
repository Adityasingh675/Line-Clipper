import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Line-Clipper'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipPath(
            child: Image.network(
                "https://images.unsplash.com/photo-1606828368219-df8086d2f9a2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxfDB8MXxhbGx8fHx8fHx8fA&ixlib=rb-1.2.1&q=80&w=1080"),
            clipper: MyClipper(),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  // @override
  // Path getClip(Size size) {
  //   // TODO: implement getClip
  //   var path = Path();
  //   path.lineTo(0.0, size.height);
  //   path.lineTo(size.width, 0.0);
  //   path.close();
  //   return path;
  // }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.moveTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }
}
