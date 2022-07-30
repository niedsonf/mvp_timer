import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/widgets/sliver_appbar/search_action_button.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri pixUrl = Uri.parse('https://nubank.com.br/pagar/19fw2/6taRKE3iaa');
final Uri discordUrl = Uri.parse('https://discord.gg/aP88Cu3Tx8');

class DonateDialog extends StatelessWidget {
  const DonateDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: darker,
      title: Text.rich(TextSpan(children: [
        TextSpan(
            text: 'Muito obrigado!\n',
            style: TextStyle(color: red, fontSize: 25)),
        TextSpan(
            text:
                'Sua ajuda incentiva muito o desenvolvimento e atualização do MvPlus+\n',
            style: TextStyle(color: light, fontSize: 16)),
        TextSpan(
            text: 'O botão vermelho irá te encaminhar para meu QRCODE/PIX\n',
            style: TextStyle(color: light, fontSize: 16)),
        TextSpan(
            text:
                'Na descrição do PIX informe com qual nome você gostaria de aparecer no mural de donates!\nDo contrário utilizarei seu nome real ;D\n\n',
            style: TextStyle(color: light, fontSize: 16)),
        TextSpan(
            text: 'Sugestões? Críticas? Dúvidas? Entre em contato!\n',
            style: TextStyle(color: blue, fontSize: 16)),
      ])),
      content: Row(
        children: [
          SearchActionButton(
              text: 'Voltar',
              color: light,
              onTap: () {
                Navigator.pop(context);
              }),
          const SizedBox(width: 25),
          SearchActionButton(
              text: 'Contato',
              color: blue,
              onTap: () {
                launchUrl(discordUrl);
              }),
          const SizedBox(width: 15),
          SearchActionButton(
              text: 'Quero ajudar!',
              color: red,
              onTap: () {
                launchUrl(pixUrl);
              }),
        ],
      ),
    );
  }
}
