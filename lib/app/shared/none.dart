class None {
  const None();

  @override
  bool operator ==(Object other) {
    return identical(this, other) || other is None;
  }

  @override
  int get hashCode => 0;
}
