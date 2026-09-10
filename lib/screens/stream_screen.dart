import 'package:flutter/material.dart';
import 'dart:async';

class StreamScreen extends StatefulWidget {
  const StreamScreen({super.key});

  @override
  State<StreamScreen> createState() => _StreamScreenState();
}

class _StreamScreenState extends State<StreamScreen> {
  int _counter = 0;
  StreamSubscription<int>? _subscription;
  Stream<int> _generateNumbers() async* {
    for (int i = 1; i <= 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
  }

  void _startStream() {
    setState(() {
      _counter = 0;
    });
    
    _subscription?.cancel();
    
    _subscription = _generateNumbers().listen(
      (data) {
        setState(() {
          _counter = data;
        });
      },
      onDone: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Stream finished!')),
        );
      },
    );
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Stream Counter (1-10):',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              '$_counter',
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _startStream,
              child: const Text('Start Stream'),
            ),
          ],
        ),
      ),
    );
  }
}
