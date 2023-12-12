import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 20,
      // height: 60.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
              ),
              decoration: InputDecoration(
                hintText: 'Search an article...',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w200,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
                contentPadding:
                    const EdgeInsets.fromLTRB(15.0, 10.0, 10.0, 0.0),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
                suffixIcon: GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.mic),
                ),
              ),
              onSubmitted: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
