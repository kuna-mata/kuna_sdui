library kunasdui;
import 'package:flutter/material.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

class UIObject {
  final String type;
  final Map<String, void Function()> methods;
  final String tooltip;

  UIObject(this.type, this.methods, this.tooltip);

  UIObject.fromJson(Map<String, dynamic> json)
    : type = json["type"] as String,
      methods = json["methods"] as Map<String, void Function()>,
      tooltip = json["tooltip"] as String;
  
  FloatingActionButton toButton() => FloatingActionButton(onPressed: methods["onPressed"]);
}