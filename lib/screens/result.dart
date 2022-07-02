import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int points;
  final Function reset;

  const Result(this.points, this.reset, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Center(
          child: Column(
            children: [
              Text(
                "Você acertou $points perguntas.",
                style: const TextStyle(color: Colors.white, fontSize: 32),
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () => reset(),
                child: const Text(
                  "Voltar",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    fixedSize: MaterialStateProperty.all<Size>(
                        const Size.fromHeight(48))),
              )
            ],
          ),
        ),
      );
}
