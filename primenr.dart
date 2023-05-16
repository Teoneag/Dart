int isPrime(int a) {
  if (a < 2 || a > 2 && (a % 2 == 0)) return 0;
  for (var d = 3; d * d <= a; d += 2) if (a % d == 0) return 0;
  return 1;
}

void main() {
  var a = [15, 16, 19, 1, 0, 7];
  for (var i = 0; i < a.length; i++) print(isPrime(a[i]));
}
