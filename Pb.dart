void main() {
  test_param();
  test_param(s1: 'hello');
  test_param(s2: 'hello', s1: 'world');
}

test_param({s1, s2}) {
  print(s1);
}
