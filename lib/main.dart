import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Vermelho', 'Azul', 'Verde', 'Amarelo'], 
      },
      {
        'texto': 'Qual é o seu animal favorito?',  
        'respostas': ['Leão', 'Coelho', 'Elefante', 'Tubarão'],    
      },
      {
        'texto': 'Qual sua comida favorita?',
        'respostas': ['Sushi', 'Pizza', 'Hamburguer', 'Cachorro quente'], 
      },
      {
        'texto': 'Qual sua estação do ano favorita?',
        'respostas': ['Verão', 'Inverno', 'Outono', 'Primavera'], 
      }
    ];

    List<String> respostas = perguntas[_perguntaSelecionada].cast()['respostas'];
    List<Widget> widgets = respostas.map((t) => Resposta(t, _responder)).toList();

    // for (String textoResp in respostas) {
    //   widgets.add(Resposta(textoResp, _responder));
    // }



    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Perguntas"),
          ),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            ...widgets,
          ],
        ),
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