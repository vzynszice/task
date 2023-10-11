import 'package:flutter/material.dart';
import 'package:to_do_app2/product/constants/shape/shape_constants.dart';
import 'package:to_do_app2/view/task/viewmodel/task_view_model.dart';

class AddingTextField extends StatelessWidget {
  const AddingTextField({
    super.key,
    required this.viewModel,
  });

  final TaskViewModel? viewModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        controller: viewModel!.textEditingController,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: ShapeConstants.textFieldBorderSide,
                borderRadius: ShapeConstants.textFieldBorderRadius)),
      ),
    );
  }
}
