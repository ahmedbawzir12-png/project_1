import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KHADAMATY',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       // colorScheme: ColorScheme.fromSeed(seedColor: Colors.Khadamaty_color),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 7, 134, 11),
        title: const Text(
          "KHADAMATY",
          style: TextStyle(
            color: Color.fromARGB(255, 246, 247, 246),
            fontSize: 25,
            
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 25),
          
              // ===== Logo and Slogan =====
              Column(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('images/Khadamaty_icon.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "To facilitate access\nto services in Yemen",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
          
              const SizedBox(height: 30),
          
              // ===== Developers Section =====
            sectionTitle("Developers", const Color.fromARGB(255, 1, 169, 46)),
              const SizedBox(height: 10),
              infoRow("Ahmed Bawzir", "Amer Bin Eshaq"),
              const SizedBox(height: 5),
              infoRow("Ahmed AL-Johi", "Saleh AL-Naqeeb"),
          
              const SizedBox(height: 30),
          
              // ===== Goals Section =====
              sectionTitle("Goals", Colors.green),
           
           
              const SizedBox(height: 10),
              infoText("1- Easy Access"),
              infoText("2- Unified Platform"),
              infoText("3- Building Trust"),
          
              const SizedBox(height: 30),
          
              // ===== Tools Section =====
             sectionTitle("Tools", Colors.green),
              const SizedBox(height: 10),
              infoText("1- Flutter"),
              infoText("2- Firebase"),
          
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  static Widget sectionTitle(String title, Color color) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        title,
        style: TextStyle(
          color: color,
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  static Widget infoRow(String left, String right) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(left, style: const TextStyle(fontWeight: FontWeight.w400)),
          Text(right, style: const TextStyle(fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }

  static Widget infoText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 3),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
