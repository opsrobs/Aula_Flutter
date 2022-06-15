import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String textoResposta;
  final void Function() quandoSelecionado;
  const Resposta(this.textoResposta, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextButton(
        style:
            TextButton.styleFrom(backgroundColor: Colors.deepPurpleAccent[400]),
        child: Text(textoResposta),
        onPressed: quandoSelecionado,
      ),
    );
  }
}
