void runDuringInit(Function useCase) {
  Future.delayed(Duration.zero, () {
    useCase();
  });
}

