export 'package:polymer/init.dart';

import 'dart:async';
import 'dart:html';

void main() {
  HtmlElement progress = document.querySelector('#progress');
  int value = 0;
  new Timer.periodic(new Duration(milliseconds: 10), (Timer timer) {
    if (100 < value) {
      value = 0;
    }
    progress.attributes['value'] = value.toString();
    value += 1;
  });
}
