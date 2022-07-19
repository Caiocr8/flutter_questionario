import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

  late final String texto;
  final void Function() onSelection;

  Resposta(this.texto, this.onSelection);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 5, left: 20, right: 20, bottom: 5
      ),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          textStyle: TextStyle(color: Colors.white)
        ),
        onPressed: onSelection,
        child: Text(texto),
      ),
    );
  }
}