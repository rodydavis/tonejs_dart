library tonejs_dart;

import 'package:js/js.dart';

export 'src/synth.dart';

@JS('Tone')
class Tone {
  @JS('now')
  external static num now();

  @JS('start')
  external static Future<void> start();
}
