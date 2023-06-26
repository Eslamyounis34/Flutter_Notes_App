import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hive_notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:hive_notes_app/shared/constants.dart';
import 'package:hive_notes_app/widgets/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'add_note_form.dart';
import 'custom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Container(
        decoration: BoxDecoration(
            color: HexColor('333739'),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: BlocListener<AddNoteCubit, AddNoteCubitState>(
            listener: (context, state) {
              if (state is AddNoteFailure) {
                print('Failed ${state.errorMsg}');
              }
              if (state is AddNoteSuccess) {
                Navigator.pop(context);
              }
            },
            child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: SingleChildScrollView(child: AddNoteForm())),
          ),
        ),
      ),
    );
  }
}
