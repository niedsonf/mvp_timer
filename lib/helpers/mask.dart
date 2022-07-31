import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

String applyHPMask(double hp) {
  List<String> explodedHP = hp.toString().split('').reversed.toList();
  for (int i = 3; i < explodedHP.length; i += 4) {
    explodedHP.insert(i, '.');
  }
  return explodedHP.reversed.join();
}

String getTimeFormat(int value) {
  switch (value) {
    case 2400:
      return 'Após meia-noite';
    case 7003:
      return '3h da manhã após 7 dias';
    case 2404:
      return 'Após 4h da manhã';
    case 3003:
      return '3h da manhã após 3 dias';
    default:
      final int hour = value ~/ 60;
      final int minutes = value % 60;
      return '${hour.toString().padLeft(2, "0")}h${minutes.toString().padLeft(2, "0")}';
  }
}

MaskTextInputFormatter timeMaskFormatter() => MaskTextInputFormatter(
    mask: '##:##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy);

MaskTextInputFormatter positionMaskFormatter() => MaskTextInputFormatter(
    mask: '###',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy);
