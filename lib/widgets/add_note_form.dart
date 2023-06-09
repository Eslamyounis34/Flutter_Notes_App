import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:hive_notes_app/models/note_model.dart';
import 'package:hive_notes_app/widgets/colors_list_view.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';
import 'package:intl/intl.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, content;
  Color? selectedColor;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(children: [
        SizedBox(
          height: 25,
        ),
        CustomTextField(
          onSaved: (value) {
            title = value;
          },
          hint: 'Title',
          maxLines: 1,
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextField(
            onSaved: (value) {
              content = value;
            },
            hint: 'Content',
            maxLines: 5),
        SizedBox(
          height: 32,
        ),
        ColorsListView(),
        const SizedBox(
          height: 32,
        ),
        BlocBuilder<AddNoteCubit, AddNoteCubitState>(
          builder: (context, state) {
            return CustomButton(
              isLoading: state is AddNoteLoading ? true : false,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  DateTime now = DateTime.now();
                  String formatDate = DateFormat('dd-MM-yyyy').format(now);
                  var noteModel = NoteModel(
                      title: title!,
                      content: content!,
                      date: formatDate,
                      color: Color(0xffFFCC80).value.toInt());
                  BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            );
          },
        ),
        const SizedBox(
          height: 22,
        )
      ]),
    );
  }
}
