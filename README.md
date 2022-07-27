# Tone.js Dart

Tone.js api for Flutter web

## Example

```dart
import 'package:flutter/material.dart';
import 'package:piano/piano.dart';
import 'package:tonejs_dart/tonejs_dart.dart' as Tone;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tone.js',
      theme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool started = false;
  final synths = <Tone.Synth>[
    Tone.Synth(),
    Tone.PolySynth(),
    Tone.FMSynth(),
    Tone.AMSynth(),
  ];
  int idx = 0;
  late Tone.Synth synth = synths[idx].toDestination();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tone.js'),
        actions: [
          // Pop menu button for synths
          DropdownButton<int>(
            value: idx,
            onChanged: (value) {
              if (value == null) {
                return;
              }
              setState(() {
                idx = value;
                synth = synths[idx].toDestination();
              });
            },
            items: const [
              DropdownMenuItem<int>(
                value: 0,
                child: Text('Mono Synth'),
              ),
              DropdownMenuItem<int>(
                value: 1,
                child: Text('Poly Synth'),
              ),
              DropdownMenuItem<int>(
                value: 2,
                child: Text('FM Synth'),
              ),
              DropdownMenuItem<int>(
                value: 3,
                child: Text('AM Synth'),
              ),
              DropdownMenuItem<int>(
                value: 4,
                child: Text('Noise Synth'),
              ),
            ],
          ),
        ],
      ),
      body: InteractivePiano(
        highlightedNotes: [NotePosition(note: Note.C, octave: 3)],
        naturalColor: Colors.white,
        accidentalColor: Colors.black,
        keyWidth: 60,
        noteRange: NoteRange.forClefs([
          Clef.Treble,
        ]),
        onNotePositionTapped: (position) async {
          if (!started) {
            await Tone.start();
            started = true;
          }
          final noteName = position.name.replaceAll('♯', '#');
          synth.triggerAttackRelease(noteName, '8n');
        },
      ),
    );
  }
}

```