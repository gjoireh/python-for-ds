# 두 글자 단위로
z = "hello"

z_2_gram = []
for i in range(len(z) - 1):
    z_2_gram.append(z[i:i + 2])
print(z_2_gram)


# 두 단어단위로
Zzz2 = "This is python Program"
Zzz2_2 = Zzz2.split()
Zzz2_2_gram = []
for i in range(len(Zzz2_2) - 1):
    Zzz2_2_gram.append("".join(Zzz2_2[i: i + 2]))
print(Zzz2_2_gram)


