import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  TextEditingController controllerusr = new TextEditingController();
  TextEditingController controllerpass = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Text(''),
          ),
          Container(
            margin: EdgeInsets.all(50),
            //color: Color(0xff0A4085),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    child: TextField(
                  controller: controllerusr,
                )),
                Container(
                  child: Text('Usuario'),
                ),
                Container(
                    child: TextField(
                  controller: controllerpass,
                )),
                Container(
                  child: Text('Contraseña'),
                ),
                Container(
                  child: Text(''),
                ),
                FlatButton(
                  height: 50,
                  minWidth: 150,
                  color: Colors.lightBlue,
                  onPressed: () {
                    if (controllerusr.text == '0604604579' &&
                        controllerpass.text == '0604604579') {
                          print('Valores: '+ controllerusr.text +' - '+ controllerpass.text);
                      /*Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => principal),
                      );*/
                    }
                  },
                  child: Text(
                    'Ingresar',
                    style: TextStyle(
                      fontSize: 24,
                      shadows: [
                        Shadow(
                          color: Colors.white,
                          offset: Offset(2, 2),
                        ),
                        Shadow(
                          color: Colors.white,
                          offset: Offset(-2, 2),
                        ),
                        Shadow(
                          color: Colors.white,
                          offset: Offset(2, -2),
                        ),
                        Shadow(
                          color: Colors.white,
                          offset: Offset(-2, -2),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Text(''),
          ),
        ],
      ),
    ));
  }
}
