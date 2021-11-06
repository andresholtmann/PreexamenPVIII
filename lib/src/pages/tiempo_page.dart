import 'package:flutter/material.dart';

class TiempoPage extends StatelessWidget {
  static final pageName = 'tiempo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tiempo Page'),
        actions: <Widget>[
          Container(
            decoration: new BoxDecoration(
                gradient: new LinearGradient(
                    colors: [Color(0xFFffbb00), Color(0xFFf38c02)],
                    begin: const FractionalOffset(1.0, 0.1),
                    end: const FractionalOffset(1.0, 0.9))),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://www.caracteristicas.co/wp-content/uploads/2018/10/tiempo-1-e1581645898998.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
