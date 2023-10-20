import 'package:flutter/material.dart';
import 'package:to_do_app2/product/constants/color/color_utilities.dart';
import 'package:to_do_app2/product/constants/sizes/size_constants.dart';
import 'package:to_do_app2/product/widget/text/save_button_text.dart';
import 'package:to_do_app2/view/task/viewmodel/task_view_model.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    super.key,
    required this.viewModel,
  });

  final TaskViewModel? viewModel;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          viewModel!.onChangeValue(viewModel!.textEditingController.text);
          viewModel!.textEditingController.text = "";
          viewModel!.setDatas(viewModel?.taskModel!.index ?? 0);
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorConstants.saveButtonColor),
        child: const SizedBox(
          width: SizeConstants.saveButtonWidth,
          height: SizeConstants.saveButtonHeight,
          child: Center(child: SaveButtonText()),
        ));
  }
}
