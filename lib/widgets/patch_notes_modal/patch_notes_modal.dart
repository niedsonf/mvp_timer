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
                  CustomText(text: 'Versão alpha em desenvolvimento...')
                ],
              ),
            ));
  }
}
