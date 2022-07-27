import 'package:js/js.dart';

@JS('Tone.Synth')
class ToneSynth {
  external ToneSynth toDestination();
  external void triggerAttackRelease(String note, String duration);
  external void triggerAttack(String note, [num time]);
  external void triggerRelease([num time]);
}
