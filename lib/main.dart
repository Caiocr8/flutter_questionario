import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': [
          {'texto': 'Vermelho', 'nota': 10}, 
          {'texto': 'Azul', 'nota': 5}, 
          {'texto': 'Verde', 'nota': 2}, 
          {'texto': 'Amarelo', 'nota': 8}
        ], 
      },
      {
        'texto': 'Qual é o seu animal favorito?',  
        'respostas': [
          {'texto': 'Leão', 'nota': 8}, 
          {'texto': 'Urubu', 'nota': 10},
          {'texto': 'Elefante', 'nota': 5},
          {'texto': 'Tubarão', 'nota': 2},
        ],    
      },
      {
        'texto': 'Qual sua comida favorita?',
        'respostas': [
          {'texto': 'Sushi', 'nota': 10}, 
          {'texto': 'Pizza', 'nota': 8}, 
          {'texto': 'Hamburguer', 'nota': 5}, 
          {'texto': 'Cachorro quente', 'nota': 2}
        ], 
      },
      {
        'texto': 'Qual sua estação do ano favorita?',
        'respostas': [
          {'texto': 'Verão', 'nota': 10}, 
          {'texto': 'Inverno', 'nota': 8}, 
          {'texto': 'Outono', 'nota': 5}, 
          {'texto': 'Primavera', 'nota': 2}
        ], 
      }
    ];

  void _responder() {
    if (temPerguntaSelecionada) {
        setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Perguntas"),
          ),
        ),
        body: temPerguntaSelecionada 
          ? Questionario(
              perguntas: _perguntas, 
              perguntaSelecionada: _perguntaSelecionada, 
              responder: _responder
          )
          : Resultado('Parabéns!'),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {  
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}