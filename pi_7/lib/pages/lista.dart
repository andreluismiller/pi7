import 'package:flutter/material.dart';
import 'package:pi_7/utils/quantity_selector.dart';
import '../components/drawer_component.dart';

class Lista extends StatefulWidget {
  const Lista({ Key? key }) : super(key: key);

  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {
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
      body: DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Produto',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Preço',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Quantidade',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Valor Total',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Produto 1')),
            DataCell(Text('12,00')),
            DataCell(Text('1')),
            // DataCell(NumericStepButton(onChanged: onChanged)),
            DataCell(Text('12')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Produto 2')),
            DataCell(Text('12,00')),
            DataCell(Text('1')),
            // DataCell(NumericStepButton(onChanged: onChanged)),
            DataCell(Text('12')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Produto 3')),
            DataCell(Text('15,00')),
            DataCell(Text('1')),
            // DataCell(NumericStepButton(onChanged: onChanged)),
            DataCell(Text('15')),
          ],
        ),
      ],
      ),
    );
  }
}