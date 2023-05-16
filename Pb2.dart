import 'dart:io';

void mergeSort(List<int> list) {
  mergeSortRange(list, 0, list.length - 1);
}

void mergeSortRange(List<int> list, int l, int r) {
  if (l >= r) return;
  int m = l + (r - l) ~/ 2;
  mergeSortRange(list, l, m);
  mergeSortRange(list, m + 1, r);
  merge(list, l, m, r);
}

void merge(List<int> list, int l, int m, int r) {
  List<int> res = list.sublist(l, r + 1);
  int i1 = l;
  int i2 = m + 1;
  int i = l;
  while (i1 <= m && i2 <= r) {
    int v1 = res[i1 - l];
    int v2 = res[i2 - l];

    if (v1 < v2) {
      list[i++] = v1;
      ++i1;
    } else {
      list[i++] = v2;
      ++i2;
    }
  }
  while (i1 <= m) list[i++] = res[i1++ - l];
  while (i2 <= m) list[i++] = res[i2++ - l];
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  var a = stdin.readLineSync()!;
  a += ' ';
  int m = a.length, j = 0, ok = 0;
  var v = [0];
  for (int i = 0; i < m; i++) {
    if (a[i] == ' ') {
      j++;
      ok = 0;
      v.add(0);
    } else if (a[i] == '-')
      ok = 1;
    else {
      v[j] = v[j] * 10 + int.parse(a[i]);
      if (ok == 1) v[j] *= -1;
    }
  }

  mergeSort(v);
  for (int i = 0; i < n; i++) {
    print(v[i]);
  }
}
