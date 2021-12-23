import 'package:flutter/material.dart';

class PageUI {
  String _id;
  String _title;
  String _subtitle;
  String _description;
  String _date;
  String _sourceCode;
  Icon _icon;
  Widget _page;

  PageUI(
    this._id,
    this._title,
    this._subtitle,
    this._description,
    this._date,
    this._sourceCode,
    this._icon,
    this._page,
  );

  Widget get page => _page;

  Icon get icon => _icon;

  String get subtitle => _subtitle;

  String get title => _title;

  String get description => _description;

  String get date => _date;

  String get sourceCode => _sourceCode;

  String get id => _id;
}
