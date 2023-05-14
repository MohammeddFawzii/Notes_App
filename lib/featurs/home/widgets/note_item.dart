import 'package:flutter/material.dart';

import '../../../models/note_model.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.noteModel,
  });

  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Color(noteModel.color),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(noteModel.title,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 30)),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .6,
                            child: Text(noteModel.description,
                                style: const TextStyle(
                                    color: Colors.black45, fontSize: 20)),
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.black,
                            size: 35,
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 20),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        noteModel.date,
                        style: const TextStyle(
                            color: Colors.black54, fontSize: 20),
                      )),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
