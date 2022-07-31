import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/widgets/custom_text.dart';
import 'package:mvp_timer/widgets/patch_notes_modal/top_modal.dart';

class PatchNotesModal extends StatefulWidget {
  const PatchNotesModal({Key? key}) : super(key: key);

  @override
  State<PatchNotesModal> createState() => _PatchNotesModalState();
}

class _PatchNotesModalState extends State<PatchNotesModal>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return BottomSheet(
        onClosing: () {
          Navigator.pop(context);
        },
        enableDrag: true,
        animationController: controller,
        backgroundColor: Colors.transparent,
        builder: (BuildContext context) => Container(
              decoration: BoxDecoration(
                color: darker,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.elliptical(50, 20)),
              ),
              child: Column(
                children: [
                  TopModal(),
                  SizedBox(height: 30),
                  CustomText(text: 'Alpha v1.0'),
                  SizedBox(height: 20),
                  CustomText(
                      text:
                          'Objetivos para serem realizados para a versão beta:\nLembrando que quando o aplicativo estiver estável será disponibilizado para Android e Desktop também!!!\n- Criar logo para o App;\n- Linkar /navi dos mapas;\n- Fixar bug que torna vermelho os Timers quando reseta um cooldown;\n- Fixar horário de timer que buga ao inserir tempo customizado perto da virada do dia;\n- Desenvolver as páginas do "Mural de Donates" e "Ajuda";\n- Desenvolver a responsividade do aplicativo, uma vez que só está disponível em telas maiores que 978px de largura;\n- Desenvolver menu único para cada página (com exceção de "MvPs" e "Favoritos").\n\nFuturas melhorias (menos prioridade que objetivos acima)\n- Desenvolver uma melhor forma de posicionar o ping de localização do MvP morto, que em alguns mapas não está condizente com as coordenadas inseridas;\n- Criar paginação para a listagem de MvPs;')
                ],
              ),
            ));
  }
}
