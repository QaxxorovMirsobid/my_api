def generate_permutations(string):
    if len(string) <= 1:
        yield string
    else:
        for perm in generate_permutations(string[1:]):
            for i in range(len(string)):
                yield perm[:i] + string[0:1] + perm[i:]

print(list(generate_permutations("abs")))