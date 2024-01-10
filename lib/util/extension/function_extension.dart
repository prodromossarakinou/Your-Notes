
extension FunctionExt on Function? {

  callOrNull () {
    (this ?? () {}).call();
  }

}