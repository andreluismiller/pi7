// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var texto = ['Seja bem-vindo(a),', 'Nome do usuário'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Inicio'),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text('Seja bem-vindo'),
                  Text('Nome usuário'),
                ],              
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text('Vamos as compras?'),
                  ElevatedButton(
                    onPressed: null,
                    child: Text('Ativar NFC'),
                    //TO DO: 
                    //Implementar função para ativar NFC do dispositivo
                  ),
                  ElevatedButton(
                    onPressed: null,
                    child: Text('Sair do app'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//TO DO:
//Criar janela pop-up ativada pela detecção de uma etiqueta NFC, contendo as informações do produto
//(tipo, marca, quantidade e valor) = [{"LanguageCode":"English","Text":"(tipo, marca, quantidade e valor","EncodingType":"UTF8","RecordType":"Text"}], 
//com opções para adicionar produto à lista ou voltar a escanear produtos
