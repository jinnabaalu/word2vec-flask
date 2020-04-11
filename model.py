from pymagnitude import Magnitude
vectors = Magnitude('GoogleNews-vectors-negative300.magnitude')

cat_vector = vectors.query('cat')
print(cat_vector)

print(vectors.similarity("cat", "dog"))
print(vectors.most_similar("cat", topn=100))

def similarity(word1, word2):
    return vectors.similarity(word1, word2)