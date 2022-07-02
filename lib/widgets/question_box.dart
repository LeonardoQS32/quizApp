import 'package:flutter/material.dart';
import '../models/question.dart';

class QuestionBox extends StatelessWidget {
  final int _index;
  final List<Map<int, List<Question>>> _questions;
  final Function _actionButton;

  const QuestionBox(this._index, this._questions, this._actionButton,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              const Text(
                "Selecione a afirmação correta: ",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () =>
                    _actionButton(_questions[_index][_index]![0].value),
                child: Text(
                  _questions[_index][_index]![0].label,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                ),
                style: ButtonStyle(
                  fixedSize:
                      MaterialStateProperty.all(const Size.fromHeight(48)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "OU",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () =>
                    _actionButton(_questions[_index][_index]![1].value),
                child: Text(
                  _questions[_index][_index]![1].label,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                ),
                style: ButtonStyle(
                  fixedSize:
                      MaterialStateProperty.all(const Size.fromHeight(48)),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
              )
            ],
          ),
        ),
      );
}
