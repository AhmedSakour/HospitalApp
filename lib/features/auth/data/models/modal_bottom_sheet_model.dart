import 'package:flutter/material.dart';

class ModalBottomSheetModel {
  final String title;
  final String descritpion;
  final IconData icon;
  final Function()? onTap;

  ModalBottomSheetModel(
      {required this.title,
      required this.descritpion,
      required this.icon,
      this.onTap});
}
