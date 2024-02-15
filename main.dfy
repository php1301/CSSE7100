method Factorial(n: int) returns (result: int)
    requires n >= 0
    ensures result >= 1
    ensures forall i :: 1 <= i <= n ==> result % i == 0
{
    if n == 0 {
        return 1;
    } else {
        return n * Factorial(n - 1);
    }
}