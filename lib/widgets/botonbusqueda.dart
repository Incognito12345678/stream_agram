
import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.search, color: Colors.grey),
          label: const Text('A donde quieres pedir?',
              textAlign: TextAlign.start, style: TextStyle(color: Colors.grey)),
        
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            Color.fromARGB(255, 242, 234, 234)),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
              )
            )
        ),
        ),
      ),
    );
  }
}
