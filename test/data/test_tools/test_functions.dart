bool listsAreEqual(List list1, List list2) {
  if (list1.length != list2.length) {
    return false;
  }
  return Set.from(list1).containsAll(Set.from(list2)) && Set.from(list2).containsAll(Set.from(list1));
}
