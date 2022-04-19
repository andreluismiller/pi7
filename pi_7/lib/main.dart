// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
import 'package:flutter/material.dart';
// import 'home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    )
  );
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Compras por NFC'),
        //'actions: [
        //IconButton(icon: Icon(Icons.nome, color: Colors.cor,), onPressed: (){}) >>> Adiciona ícone com funcionalidade 
        ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Usuário'), 
              accountEmail: Text('usuaro@email.com.br'),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person, color: Colors.black,
                ),              
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
            ),




            //MENU LATERAL (navegação) do aplicativo
            //CÓDIGO CORPO DO USERACCOUNTSDRAWERHEADER (barra lateral do app)
          InkWell (              
            onTap: (){}, //Adicionar função
            //Widget para transformar a entrada estática do menu em uma ação
            child: ListTile(
              title: Text('Página Inicial'),
              leading: Icon(Icons.home),
            ),
          ),

            InkWell (
              onTap: (){}, //Adicionar função
              //Widget para transformar a entrada estática do menu em uma ação 
              child: ListTile(
                title: Text('Minha Lista'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),

            Divider(),

            InkWell (
              onTap: (){}, //Adicionar função
              //Widget para transformar a entrada estática do menu em uma ação              
              child: ListTile(
                title: Text('Configurações'),
                leading: Icon(Icons.settings),
              ),
            ),

            InkWell ( 
              onTap: (){}, //Adicionar função
              //Widget para transformar a entrada estática do menu em uma ação
              child: ListTile(
                title: Text('Sobre'),
                leading: Icon(Icons.help),
              ),
            ),
          
          ],
        )
      ),
    );
  }
}


//EXERCÍCIO - IGNORAR
// void main() {
//   runApp(
//     MaterialApp(
//       home: Center(
//         //Child: permite apenas um widget dentro da classe pai (Center > Column)
//         //Column não deve ser usada para listas que excedem o tamanho da tela. O ideal neste caso é o uso de lista
//         child: ListView(
//           //Children: permite uma lista de widgets dentro da classe pai (Columns > Text1, Text2, etc)
//           children: <Widget>[
//             //O widget ListView permite uma série de widgets além de texto
//             Text('one'),
//             Text('one'),
//             Text('one'),
//             Text('one'),
//           ]
//         ),
//       )
//     )
//   );
// }



// //HOMEPAGE
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
    //StatelessWidget são aqueles que não alteram o conteúdo da página, mesmo diante de input do usuário (ex: login, )
//   @override
//   Widget build(BuildContext context) {
//     var texto = ['Seja bem-vindo(a),', 'Nome do usuário'];
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Inicio'),
//         ),
//         body: Column(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(20),
//               child: Column(
//                 children: [
//                   Text('Seja bem-vindo'),
//                   Text('Nome usuário'),
//                 ],              
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.all(20),
//               child: Column(
//                 children: [
//                   Text('Vamos as compras?'),
//                   ElevatedButton(
//                     onPressed: null,
//                     child: Text('Ativar NFC'),
//                     //TO DO: 
//                     //Implementar função para ativar NFC do dispositivo
//                   ),
//                   ElevatedButton(
//                     onPressed: null,
//                     child: Text('Sair do app'),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


//TO DO:
//Criar janela pop-up ativada pela detecção de uma etiqueta NFC, contendo as informações do produto
//(tipo, marca, quantidade e valor) = [{"LanguageCode":"English","Text":"(tipo, marca, quantidade e valor","EncodingType":"UTF8","RecordType":"Text"}], 
//com opções para adicionar produto à lista ou voltar a escanear produtos



//CRIAÇÃO DE PÁGINA: Lista de compras
//Espécie de carrinho em forma de lista com todos os produtos adicionados pelo usuário e a somatória total dos produtos
//Exibi descrição do produto (ex: macarrão pene grano duro barilla 500g), valor e quantidade selecionada pelo usuário
