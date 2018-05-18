int fact(unsigned n, unsigned acc) {
    if (n == 0)
        return acc;
    return fact(n - 1, n * acc);
}
