// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../components/drawer_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.lightGreen,
        title: Text('Compras por NFC'),
      ),

      drawer: DrawerComponent(),

      //SEÇÃO CORPO
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
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text('Vamos às compras?'),
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
    );
  }
}