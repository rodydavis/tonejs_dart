import 'dart:convert';
import 'dart:io';

Future<void> runCommand(String command, List<String> args) async {
  print('$command ${args.join(' ')}');
  final process = await Process.start(command, args);
  // Pipe stdout to stdout
  process.stdout.transform(utf8.decoder).listen((data) {
    print(data);
  });
  // Pipe stderr to stderr
  process.stderr.transform(utf8.decoder).listen((data) {
    print(data);
  });
  // Wait for the process to exit
  final code = await process.exitCode;
  if (code != 0) {
    print('Process exited with code $code');
  }
}
