def generate_groups(my_list, n):
    if n > len(my_list) or n <= 0:
        return
    if n == 1:
        for i in my_list:
            yield (i,)
    else:
        for i in range(len(my_list) - n + 1):
            for group in generate_groups(my_list[i + 1:], n - 1):
                yield (my_list[i],) + group

my_list = [1, 2, 3, 4]
n = 2
print(list(generate_groups(my_list, n)))
