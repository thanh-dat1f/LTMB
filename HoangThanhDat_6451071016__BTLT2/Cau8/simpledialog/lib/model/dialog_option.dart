enum DialogOption {
  proceed('Option 1: Proceed'),
  settings('Option 2: Settings'),
  cancel('Option 3: Cancel');

  const DialogOption(this.label);
  final String label;
}
