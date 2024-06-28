import 'package:flutter/material.dart';

class MarkedDate implements MarkedDateInterface {
  final Color color;
  final int? id;
  final TextStyle? textStyle;
  final DateTime date;

  MarkedDate({
    required this.color,
    this.id,
    this.textStyle,
    required this.date,
  });

  @override
  // ignore: non_nullable_equals_parameter
  bool operator ==(dynamic other) {
    return this.date == other.date &&
        this.color == other.color &&
        this.textStyle == other.textStyle &&
        this.id == other.id;
  }

  @override
  DateTime getDate() => this.date;

  @override
  int? getId() => this.id;

  @override
  // ignore: unnecessary_this
  Color getColor() => this.color;

  @override
  // ignore: unnecessary_this
  TextStyle? getTextStyle() => this.textStyle;

  @override
  // TODO: implement hashCode
  // ignore: unnecessary_overrides
  int get hashCode => super.hashCode;
}

abstract class MarkedDateInterface {
  DateTime getDate();
  Color getColor();
  int? getId();
  TextStyle? getTextStyle();
}
