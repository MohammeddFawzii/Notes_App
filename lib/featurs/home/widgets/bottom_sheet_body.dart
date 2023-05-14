import 'package:flutter/material.dart';
import 'package:notes/featurs/home/widgets/color_picker.dart';

import 'custom_text_form_field.dart';

class BottomSheetBody extends StatefulWidget {
  const BottomSheetBody({
    super.key,
  });

  @override
  State<BottomSheetBody> createState() => _BottomSheetBodyState();
}

class _BottomSheetBodyState extends State<BottomSheetBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        child: Form(
          child: Column(children: [
            const CustomTextFormField(
              hint: "title",
            ),
            const CustomTextFormField(
              hint: "description",
              lines: 5,
            ),
            const ColorPiker(),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Add",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ]),
        ),
      ),
    );
  }
}
