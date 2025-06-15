import 'package:flutter/material.dart';

class TextVisiblePage extends StatefulWidget {
  const TextVisiblePage({super.key});

  @override
  State<TextVisiblePage> createState() => _TextVisiblePageState();
}

class _TextVisiblePageState extends State<TextVisiblePage> {
  @override
  Widget build(BuildContext context) {
    bool isTextVisible = false;
    return  Scaffold(
      appBar: AppBar(
        title: Text('TEXT VISIBILITY'),
      ),
      body: Column(
        children: [
         isTextVisible!=false?  Text('Text is visible now'): Text(''),
          ElevatedButton(
            onPressed: (){
              setState(() {
                isTextVisible != isTextVisible;
              });
              
              
            },
            child: Text('Make it Unvisible'))
        ],
      ),
    );
  }
}