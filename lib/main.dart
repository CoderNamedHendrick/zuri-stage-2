import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zuri_task_2/custom_appbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zuri Task 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Page(),
    );
  }
}

class Page extends StatefulWidget {
  const Page({Key key}) : super(key: key);

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  TextEditingController _textController = TextEditingController();
  FocusScopeNode _focusNode = FocusScopeNode();
  Color _color = Colors.yellow[50].withOpacity(0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      appBar: ZuriAppBar(),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 18,
                    ),
                    child: TextFormField(
                      controller: _textController,
                      cursorColor: _color,
                      focusNode: _focusNode,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      maxLines: 4,
                      cursorHeight: 18,
                      onFieldSubmitted: (text) => _focusNode.unfocus(),
                      decoration: InputDecoration(
                        labelText: 'User Input',
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(8)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                        (states) {
                          return Colors.yellow[50].withOpacity(0.6);
                        },
                      ),
                    ),
                    onPressed: () {
                      setState(() {});
                    },
                    child: Text(
                      'Done',
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    child: Container(
                      height: 250,
                      width: double.maxFinite,
                      color: Colors.white70,
                      child: Text(
                        _textController.value.text == null
                            ? 'Waiting For User\'s Input'
                            : '${_textController.value.text}',
                        style: TextStyle(
                          fontSize: 21,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('2021. Sebastine Odeh')],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
