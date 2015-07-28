# Class-based-word_concept2vec

## Introduction
The project extends word2vec with class-based decomposition trick, where class (which we call concept) serves as higher-level meaning representation.
This is in contrast to hierarchical softmax which is not linguistically motivated. 
Methods for obtaining word-concept relations include (implicit) Brown-Clustering, Topical Modeling and (explicit) knowledge bases (e.g, Probase).

##Methodology
We extend the Skip-gram to account for the concept of a word. The word-concept relations are emphasized in a generative setting.
The candidate concepts of each word should be pre-identified with one of the above-mentioned methods.
During training, we use an attention mechanism to select the most context-appropriate concept of each word. The corresponding concept vector will be updated.
