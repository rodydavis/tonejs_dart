part of '../tonejs_dart.dart';

@JS()
class Synth {
  external Synth toDestination();

  external void triggerAttackRelease(String note, String duration);

  external void triggerAttack(String note, [num time]);

  external void triggerRelease(dynamic notes, [num time]);
}

@JS()
class PolySynth extends Synth {}

@JS()
class FMSynth extends Synth {}

@JS()
class AMSynth extends Synth {}

@JS()
class NoiseSynth extends Synth {}
