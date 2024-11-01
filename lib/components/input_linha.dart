import 'package:flutter/material.dart';

class InputLinha extends StatelessWidget {
  final TextEditingController editingController;
  final String label;
  final String textError;
  final TextInputType tipoTeclado;

  InputLinha({super.key, required this.editingController, required this.label, required this.tipoTeclado, required this.textError});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24),
      child: TextFormField(
        controller: editingController,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
        ),
        keyboardType: tipoTeclado,
        validator: (value) {
          if (value != null && value.isEmpty) {
            return textError;
          }
        },
      ),
    );
  }
}
