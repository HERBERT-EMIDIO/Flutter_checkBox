import 'dart:ui';

import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  const EntradaCheckBox({super.key});

  @override
  State<EntradaCheckBox> createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {
  bool _comidaBrasileira = false;
  bool _comidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada de Dados'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            /* Text("Comida Brasileira"),
            Checkbox(
              value: _estaSelecionado,
              onChanged: (valor) {
                setState(() {
                  _estaSelecionado = valor!;
                });
                print("CheckBox " + valor.toString());
              },
            )*/
//============ Outra maneira de fazer o checkBox ===============
            CheckboxListTile(
              title: Text("Comida Brasileira"),
              subtitle: Text("Melhor comida do Mundo"),
              activeColor: Colors.red, // marcador do checkbox
              selected: false, //title e subtitle da cor do checkbox
              //secondary: Icon(Icons.add_box),
              value: _comidaBrasileira,
              onChanged: (valor) {
                setState(() {
                  _comidaBrasileira = valor!;
                  print(
                      "valor da comida Brasileira é $valor"); //valor true(marcado) ou false
                });
              },
            ),
            CheckboxListTile(
              title: Text("Comida Mexicana"),
              subtitle: Text("Melhor comida do Mundo"),
              activeColor: Colors.red, // marcador do checkbox
              selected: false, //title e subtitle da cor do checkbox
              //secondary: Icon(Icons.add_box),
              value: _comidaMexicana,
              onChanged: (valor) {
                setState(() {
                  _comidaMexicana = valor!;
                  print(
                      "valor da comida Mexicana é $valor"); //valor true(marcado) ou false
                });
              },
            ),
            ElevatedButton(
              onPressed: (() {
                print(
                    "Comida Brasileira ${_comidaBrasileira.toString()} e Comida Mexicana ${_comidaMexicana}");
              }),
              child: Text(
                "Salvar",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
