# Class-based-word_concept2vec

## Introduction
The project extends word2vec with class-based decomposition trick, where a class (which we call concept) serves as a higher-level meaning representation.
This is in contrast to hierarchical softmax which is not linguistically motivated. 
Methods for obtaining word-concept relations include (implicit) Brown-Clustering, Topical Modeling and (explicit) knowledge bases (e.g, Probase).

##Methodology
We extend the Skip-gram to account for the concept of a word. The word-concept relations are emphasized in a generative setting.
The candidate concepts of each word should be pre-identified with one of the above-mentioned methods.
During training, we use an attention mechanism to select the most context-appropriate concept of each word. The corresponding concept vector will be updated.

##Application
What is the usage of concept vectors? They can be used for disambiguating word meanings contextually.

##Extended Parameters
-cbow
When cbow=0, train the skip-gram; otherwise train the cbow.
For concept training, cbow must be set to 0.

-hs
When hs=0, train word vectors without hierarchical decomposition of softmax;
When hs=1, train word vectors with Huffman tree as the hierarchical softmax;
When hs=2, train word vectors with concept class based decomposition.
For concept training, hs must be set to 2.

-output
The output file to store word vectors.

-output_concept
The output file to store concept vectors.
If it is not for concept training, the parameter should not be set. But if hs=1, the file stores the vectors of the hidden tree nodes. 

-negative 
When cbow=0 and hs=2,  negative is the number of negative examples sampled when computing the concept->output error.
In other cases, negative is the number of negative examples sampled when computing the input->output error. 
Large value leads to higher accuracy but slower speed. Default value is 5.

-negative_concept
This is the number of negative examples sampled when computing the input->concept error. The samples are drawn from the uniform distribution of concept classes. Large value leads to higher accuracy but slower speed. Default value is 0.
If negative_concept=0, there will be no negative sampling performed in the input->concept prediction; i.e., all concept classes will be traversed.

-size
Size of the word vectors and concept vectors.

-class
The file that stores words and their corresponding concepts in the following format:
Word1\tconcept_idx1\tconcept_idx2…\n
Word2\tconcept_idx1\tconcept_idx2…\n
Word3\tconcept_idx1\tconcept_idx2…\n
…
For each word, there can be at most 10 candidate concepts, so preprocessing is needed to drop the less significant concepts. 

