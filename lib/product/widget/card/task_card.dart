import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:to_do_app2/product/constants/color/color_utilities.dart';
import 'package:to_do_app2/product/constants/icon/icon_constants.dart';
import 'package:to_do_app2/product/constants/shape/shape_constants.dart';
import 'package:to_do_app2/view/task/viewmodel/task_view_model.dart';

class TaskCardWidget extends StatelessWidget {
  TaskCardWidget({
    super.key,
    required this.viewModel,
    required this.themeData,
    required this.index,
  });

  final TaskViewModel? viewModel;
  final ThemeData themeData;
  int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Observer(builder: (context) {
        return ListTile(
          tileColor: viewModel!.taskModels[index].isFinished
              ? ColorConstants.listTileFinishedColor
              : ColorConstants.listTileUnFinishedColor,
          leading: viewModel!.taskModels[index].isFinished
              ? IconConstants.finishedIcon
              : IconConstants.unFinishedIcon,
          title: Text(
            viewModel?.taskModels[index].taskDescription ?? "",
            style: themeData.textTheme.labelSmall,
          ),
          onTap: () async {
            viewModel!.finishTask(index);
            viewModel!.setDatas(index);
            viewModel!.taskCount--;
          },
          shape: ShapeConstants.listTileShape,
        );
      }),
    );
  }
}
