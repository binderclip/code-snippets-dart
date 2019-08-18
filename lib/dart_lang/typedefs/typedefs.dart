class SortedCollection {
  Function compare;

  SortedCollection(int f(Object a, Object b)) {
    compare = f;
  }
}

// Initial, broken implementation.
int sort(Object a, Object b) => 0;

typedef Compare = int Function(Object a, Object b);

class SortedCollection2 {
  Compare compare;

  SortedCollection2(this.compare);
}

typedef Compare2<T> = int Function(T a, T b);

void main() {
  SortedCollection coll = SortedCollection(sort);
  // All we know is that compare is a function,
  // but what type of function?
  assert(coll.compare is Function);

  SortedCollection2 coll2 = SortedCollection2(sort);
  assert(coll2.compare is Function);
  assert(coll2.compare is Compare);

  assert(sort is Compare2<int>);
}

// https://www.dartlang.org/guides/language/language-tour#typedefs
