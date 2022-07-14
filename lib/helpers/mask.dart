String applyHPMask(double hp) {
  List<String> explodedHP = hp.toString().split('').reversed.toList();
  for (int i = 3; i < explodedHP.length; i += 4) {
    explodedHP.insert(i, '.');
  }
  return explodedHP.reversed.join();
}
