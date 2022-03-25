import 'package:catalog/JSON_generator/Json_generator_script.dart';
import 'package:catalog/Pages/list_page.dart';
import 'package:catalog/Services/data_services.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
Generator generator = Generator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onVerticalDragStart: (o) {
        generator.ListGenerator();
        setState(() {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Display()));
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.indigo, Colors.deepPurpleAccent],
                begin: Alignment.bottomRight)),
        child: Padding(
            padding: const EdgeInsets.all(80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "WELCOME",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Swipe",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            )),
      ),
    ));
  }
}
