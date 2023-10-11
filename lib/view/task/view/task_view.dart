import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:to_do_app2/core/base/state/base_state.dart';
import 'package:to_do_app2/core/base/view/base_view.dart';
import 'package:to_do_app2/product/constants/color/color_utilities.dart';
import 'package:to_do_app2/product/constants/icon/icon_constants.dart';
import 'package:to_do_app2/product/constants/padding/paddings.dart';
import 'package:to_do_app2/product/constants/shape/shape_constants.dart';
import 'package:to_do_app2/product/widget/button/save_button.dart';
import 'package:to_do_app2/product/widget/card/task_card.dart';
import 'package:to_do_app2/product/widget/text/adding_task.dart';
import 'package:to_do_app2/product/widget/text/appbar_title.dart';
import 'package:to_do_app2/product/widget/textfield/adding_text_field.dart';
import 'package:to_do_app2/view/task/viewmodel/task_view_model.dart';

class TaskView extends StatefulWidget {
  const TaskView({super.key});

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends BaseState<TaskView> with TickerProviderStateMixin {
  TaskViewModel? viewModel;

  @override
  Widget build(BuildContext context) {
    return BaseView<TaskViewModel>(
      onPageBuilder: (context, value) => buildPage,
      viewModel: TaskViewModel(),
      onModelReady: (model) {
        viewModel = model;
      },
    );
  } /*
    return Container(
      height:dynamicHeight(0.1), //BaseState'den türediği için rahatlıkla kullanabiliyoruz
      color:themeData.primaryColor, //BaseState'den türediği için rahatlıkla kullanabiliyoruz
      child:Placeholder(),
    );
    */

  Widget get buildPage => Observer(builder: (context) {
        return Scaffold(
            backgroundColor: ColorConstants.scaffoldBackGroundColor,
            appBar: AppBar(
              shape: RoundedRectangleBorder(
                  borderRadius: PaddingConstants().appBarPadding),
              backgroundColor: ColorConstants.appBarBackgroundColor,
              title: const AppBarAnimatedText(),
              centerTitle: true,
              automaticallyImplyLeading: false,
            ),
            extendBody: true,
            floatingActionButton: Observer(
              builder: (context) {
                return FloatingActionButton(
                  backgroundColor: ColorConstants.floatingActionButtonColor,
                  child: IconConstants.floatingActionButtonIcon,
                  onPressed: () async {
                    // ignore: use_build_context_synchronously
                    _addingTaskSheet(context);
                  },
                );
              },
            ),
            body: Observer(
              builder: (context) {
                return SafeArea(
                  child: ListView.builder(
                      itemCount: viewModel!.taskCount,
                      itemBuilder: (context, int index) {
                        return Padding(
                          padding: PaddingConstants().cardPadding,
                          child: TaskCardWidget(
                            viewModel: viewModel,
                            themeData: themeData,
                            index: index,
                          ),
                        );
                      }),
                );
              },
            ));
      });

  Future<dynamic> _addingTaskSheet(BuildContext context) {
    return showModalBottomSheet(
        shape: ShapeConstants.bottomSheetShape,
        context: context,
        builder: (context) {
          return SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const AddingTaskWidget(),
              AddingTextField(viewModel: viewModel),
              SaveButton(viewModel: viewModel)
            ],
          ));
        });
  }
}
