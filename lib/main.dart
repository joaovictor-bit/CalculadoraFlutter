import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true
      ),
      home: MediaEscolarPage()
    );
  }
}

class MediaEscolarPage extends StatefulWidget{
  const MediaEscolarPage({super.key});

  @override
  State<MediaEscolarPage> createState()  => 
    _MediaEscolarPageState();
}

class _MediaEscolarPageState extends State<MediaEscolarPage>{

  final TextEditingController nomeController = TextEditingController();
  final TextEditingController note1Controller = TextEditingController();
  final TextEditingController note2Controller = TextEditingController();
  final TextEditingController note3Controller = TextEditingController();

  String nomeAluno ="";
  String situacao = "";
  double media = 0;



  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Media Calculator"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(Icons.school,size: 40),
            const SizedBox(height: 30),
            const Text("school media",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),)
          ],
          ), 
        
      )
      );
  }
}
