def fib():
    # generate fib sequence
    a, b = 0, 1
    for _ in range(n):
        if a > 4000000:
            return
        yield a
        a, b = b, a + b


if __name__ == "__main__":
    terms = [x for x in list(fib()) if x % 2 == 0]
    print(sum(terms))