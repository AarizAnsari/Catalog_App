import 'package:catalog/Components/Image_widget.dart';
import 'package:catalog/Components/rating_widget.dart';
import 'package:catalog/JSON_generator/Json_generator_script.dart';
import 'package:catalog/Services/data_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  List list = [];
  Generator generator = Generator();
  Data data = Data();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Products List"),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.indigo, Colors.deepPurpleAccent],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft)),
            child: StreamBuilder<QuerySnapshot>(
              stream: data.getData(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LinearProgressIndicator(),
                      Padding(
                        padding: const EdgeInsets.all(80),
                        child: Text(
                          "Loading...",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      )
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data?.docs.length,
                      itemBuilder: (context, index){
                        var item = snapshot.data?.docs[index].data() as Map;
                        return Card(
                          child: ListTile(
                            leading: SizedBox(
                              height: 50,
                              width: 50,
                              child:ImageWidget(url: item['productUrl'])
                            ),
                            title: Text(item['productName']),
                            subtitle: Text(item['productDescription']),
                            trailing: Rating(rating: item['productRating']),
                          ),
                        );
                      });
                }
              },
            )));
  }
}
