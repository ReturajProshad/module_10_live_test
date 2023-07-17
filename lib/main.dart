import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrientationLayoutApp(),
    );
  }
}

class OrientationLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Feed'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? buildPortraitLayout()
              : buildLandscapeLayout();
        },
      ),
    );
  }

Widget buildPortraitLayout() {
  return Center(
    child: ListView.separated(
      itemCount: 10, 
      separatorBuilder: (context, index) => SizedBox(height: 10), 
      itemBuilder: (context, index) {
        return Center(
          child: Padding(
            padding: EdgeInsets.all(8), 
            child: Container(
              width: 150,
              height: 150,
              color: Colors.black54,
              child: Center(
                child: Text(
                  '150X150',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    ),
  );
}





 Widget buildLandscapeLayout() {
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
    ),
    itemCount: 10, 
    itemBuilder: (context, index) {
      return Center(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            width: 150,
            height: 150,
            color: Colors.black54,
            child: Center(
              child: Text(
                '150X150',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}



}
