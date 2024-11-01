import 'package:flutter/material.dart';
import 'package:project_infoquik/constants.dart';

class BotaoQuadrado extends StatelessWidget {
  String nome;
  IconData icone;
  Color cor;
  BotaoQuadrado({super.key, required this.nome, required this.icone, required this.cor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: cor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          
          borderRadius: BorderRadius.circular(14),
        ),
        padding: EdgeInsets.zero, // Remove padding padrão para que o tamanho seja controlado pelo 'fixedSize'
        fixedSize: Size(90, 90), // Define o tamanho fixo do botão
      ),
      onPressed: () {
        // Ação ao pressionar o botão
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icone,
            size: 38,
          ),
          SizedBox(height: 4,),
          Text(
            nome,
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );

  }
}
