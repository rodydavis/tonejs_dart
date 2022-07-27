@JS('Tone')
library tonejs_dart;

import 'package:js/js.dart';

part 'src/synth.dart';
part 'src/transport.dart';

external num now();

external Future<void> start();

external Future<void> stop();

external Future<void> loaded();
