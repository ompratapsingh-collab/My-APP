import 'package:flutter/material.dart';

class FutureScreen extends StatefulWidget {
  const FutureScreen({super.key});

  @override
  State<FutureScreen> createState() => _FutureScreenState();
}

class _FutureScreenState extends State<FutureScreen> {
  String _data = 'Press button to load data';
  bool _isLoading = false;

  Future<void> _fetchData() async {
    setState(() {
      _isLoading = true;
      _data = 'Loading...';
    });

    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      _data = 'Data loaded successfully using Future!';
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _data,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _isLoading ? null : _fetchData,
              child: _isLoading 
                ? const SizedBox(
                    width: 20, 
                    height: 20, 
                    child: CircularProgressIndicator(strokeWidth: 2)
                  )
                : const Text('Load Data'),
            ),
          ],
        ),
      ),
    );
  }
}
