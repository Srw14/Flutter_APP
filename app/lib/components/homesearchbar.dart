import 'package:flutter/material.dart';

class homesearchbar extends StatelessWidget {
  const homesearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: TextField(
        style: const TextStyle(fontSize: 12),
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 135, 135, 135),
            fontSize: 12,
          ),
          filled: true,
          fillColor: const Color(0xFFFFFFFF),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 13,
            vertical: 8,
          ),
          suffixIcon: const Icon(
            Icons.search_outlined,
          ),
        ),
      ),
    );
  }
}
