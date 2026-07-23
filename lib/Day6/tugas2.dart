import 'package:flutter/material.dart';

class Tugas2Flutter extends StatelessWidget {
  const Tugas2Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Detail Aplikasi"),
        centerTitle: true
      ),
      // backgroundColor: Color(Colors.amber as int),

      body:
      Column(
        children: [
          Align(alignment: AlignmentGeometry.center),
          Text("Tride (Travel Guide Planner)",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic
          ),
          ),

          Container(
            margin: EdgeInsets.all(20),
            height: 57,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 240, 88, 88),
            ),
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Icon(Icons.email,),
                SizedBox(height: 20,),
                Text("zhillyhilmansyah@gmail.com"
                )
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(children:
            [Icon(Icons.phone),
            Text("+62 851-1130-5126"),
            Spacer(),
            Icon(Icons.location_on),
            Text("Bekasi, Indonesia")
            ],),
          ),

          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 20),
            child: Row(children:[
              Container(
                margin: EdgeInsets.all(20),
                height: 100,
                width: 130,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white)
                ),
                child: Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("1000+", style: TextStyle(fontWeight: FontWeight.bold),), Text("Pemgguna")],
                )),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.all(20),
                height: 100,
                width: 130,
                 decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white)
                ),
                child: Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Rating", style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      Icon(color: Colors.amber,Icons.star),
                      Icon(color: Colors.amber,Icons.star),
                      Icon(color: Colors.amber,Icons.star),
                      Icon(color: Colors.amber,Icons.star),
                      Icon(color: const Color.fromARGB(255, 239, 238, 235),Icons.star),
                    ],),
                  Text("4/5")
                  ],)),)  
            ],) ),

          SizedBox(height: 30),

          Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
          child: Text("Tride adalah aplikasi Smart Travel Planner yang membantu pengguna merencanakan perjalanan dengan lebih mudah. Pengguna cukup memasukkan tujuan, tanggal, durasi, dan budget, kemudian aplikasi akan membantu menyusun itinerary, memperkirakan biaya, menampilkan cuaca, serta memudahkan navigasi dalam satu aplikasi.", textAlign: TextAlign.justify,),
          ),

          Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/Tride.jpeg'),
          ),
        )
        )

        ]
      ) ,
    );
  }
}