import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:kunasdui/kunasdui.dart';

void main() {
  test('adds one to input values', () {
    final calculator = Calculator();
    expect(calculator.addOne(2), 3);
    expect(calculator.addOne(-7), -6);
    expect(calculator.addOne(0), 1);

    void incrementCounter() => ();
    Map<String, dynamic> jsonString = {
      "object": {
        "type": "button",
        "methods": {"onPressed": incrementCounter},
        "tooltip": "increment",
      }
    };
    var jsonStringObject = jsonString["object"];
    final myUI = UIObject.fromJson(jsonStringObject);
    expect(myUI.toButton().onPressed.hashCode,
        FloatingActionButton(onPressed: incrementCounter).onPressed.hashCode);
  });
}
