
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

/*
Componente corresponde ao menu lateral
Deve ser usado em todas as páginas
*/

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text('Usuário'),
          accountEmail: Text('usuaro@email.com.br'),
          currentAccountPicture: GestureDetector(
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.purple,
          ),
        ),
        //MENU LATERAL (navegação) do aplicativo
        //CÓDIGO CORPO DO USERACCOUNTSDRAWERHEADER (barra lateral do app)
        InkWell(
          onTap: () {}, //Adicionar função
          //Widget para transformar a entrada estática do menu em uma ação
          child: ListTile(
            title: Text('Página Inicial'),
            leading: Icon(Icons.home),
          ),
        ),
        InkWell(
          onTap: () {}, //Adicionar função
          //Widget para transformar a entrada estática do menu em uma ação
          child: ListTile(
            title: Text('Minha Lista'),
            leading: Icon(Icons.shopping_basket),
          ),
        ),

        Divider(),

        InkWell(
          onTap: () {}, //Adicionar função
          //Widget para transformar a entrada estática do menu em uma ação
          child: ListTile(
            title: Text('Configurações'),
            leading: Icon(Icons.settings),
          ),
        ),
        InkWell(
          onTap: () {}, //Adicionar função
          //Widget para transformar a entrada estática do menu em uma ação
          child: ListTile(
            title: Text('Sobre'),
            leading: Icon(Icons.help),
          ),
        ),
      ],
    ));
  }
}