import 'package:flutter/material.dart';
import 'package:quiz_app/screens/result.dart';
import '../models/question.dart';
import '../widgets/question_box.dart';
import 'result.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  final _questions = [
    // Lista de perguntas
    {
      0: [
        Question("O proximo ano bisexto eh em 2024", 1),
        Question("O proximo ano bisexto eh em 2022", 0)
      ]
    },
    {
      1: [
        Question("A planta da maconha pode atingir no maximo 6 metros", 1),
        Question("A planta da maconha pode atingir no maximo 3 metros", 0)
      ]
    },
    {
      2: [
        Question("Davi gostava de tocar harpa", 1),
        Question("Davi gostava de tocar flauta", 0)
      ]
    },
    {
      3: [
        Question("Cacarola eh um tipo de panela", 1),
        Question("Cacarola eh um tipo de fruta", 0)
      ]
    },
    {
      4: [
        Question("Vasco eh time de serie B", 1),
        Question("Vasco eh time de serie A", 0)
      ]
    }
  ];

  int points = 0; // Variável para marcar a quantidade de perguntas certas
  int _index = 0; // Variável para marcar a pergunta que será exibida

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz App",
          style: TextStyle(fontSize: 28),
        ),
        centerTitle: true,
      ),
      body: (_index < _questions.length)
          ? QuestionBox(_index, _questions, actionButton)
          : Result(points, reset),
    );
  }

  void actionButton(int value) {
    // Função para manipular as variáveis quando clicar nas perguntas
    setState(() {
      points += value;
      _index++;
    });
  }

  void reset() {
    setState(() {
      points = 0;
      _index = 0;
    });
  }
}
