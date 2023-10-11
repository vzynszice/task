enum LottieItems { toDoLottie }

extension LottieItemsExtension on LottieItems {
  String _path() {
    switch (this) {
      case LottieItems.toDoLottie:
        return 'to_do_lottie';
    }
  }

  String get lottiePath => 'assets/lottie/${_path()}.json';
}
