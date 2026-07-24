import 'package:flutter/material.dart';

class SingleChildscrollVievDay8 extends StatelessWidget {
  const SingleChildscrollVievDay8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("belajar Stack Day8"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  Container(color: Colors.red, height: 400, width: 400),
                  Container(color: Colors.amber, height: 300, width: 300),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100),
                        topRight: Radius.circular(100),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(color: Colors.red, height: 400, width: 400),
            Container(color: Colors.amber, height: 300, width: 300),
            Container(color: Colors.green, height: 200, width: 200),
          ],
        ),
      ),
    );
  }
}
