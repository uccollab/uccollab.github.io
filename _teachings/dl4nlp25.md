---
layout: course
title: Deep Learning For Natural Language Processing
description: Complete crash-course on Natural Language Processing. From basic text classification, all the way to Large Language Models, Reinforcement Learning From Human Feedback etc.
year: 2025
term: Summer Semester

time: Tuesdays, 13:30-15:20 AM
course_id: dl4nlp25
schedule:
  - week: 1
    date: Apr 22
    topic: NLP tasks and evaluation
    description: Course Logistics; Definition of text classification and generation task; Evaluation;

  - week: 2
    date: Apr 29
    topic: Mathematical foundations of deep learning
    description: Function minimization, efficient computation of gradients, Stochastic Gradient Descent (SGD);

  - week: 3
    date: May 6
    topic: Log-linear models
    description: Ambiguity of human language; Fundamentals of vectors and linear functions; Binary classification; Tokenization; BoW and BPE; Nonlinear mapping and sigmoid function; Log-linear model (Logistic regression);

  - week: 4
    date: May 13
    topic: Deep Neural Networks
    description: Loss functions and Binary Cross-Entropy; Online and Minibatch SGD; Multi-class classification; Continuous Bag-Of-Words (CBOW); Softmax and Temperature; Categorical Cross-Entropy Loss; Linearity and non-linearity in neural networks; ReLU;

  - week: 5
    date: May 20
    topic: Language models and word embeddings
    description: Fundamentals of probability; Classic Language Model ; Markov chain property for word probability; Maximum Likelihood Estimation; Perplexity; Neural language models; Word vector lookup; Basic text generation with neural LM; Greedy decoding and sampling;

  - week: 6
    date: May 27
    topic: Learning Word Embeddings
    description: Dot product among vectors and cosine similarity; Distributional Hypothesis; Negative sampling; Word2Vec (CBOW and Skip-gram); FastText;

  - week: 7
    date: Jun 3
    topic: Recurrent neural networks (RNNs)
    description: RNN abstraction; States and outputs; Acceptor and encoder RNNs; BiRNN; Simple RNN (Elmann) architecture; Vanishing/exploding gradient; Gates; LSTMs;

  - week: 8
    date: Jun 10
    topic: Autoregressive encoder-decoder with RNNs and attention
    description: NLP "sequence" tasks (classification, labeling, generation); The issue of variable length generation; PAD and EOS tokens as "dirty" solutions; Encoder-Decoder architecture; Teacher forcing; Fundamentals of attention (formalization; explainability; generalization, calculation); Cross vs self attention;

  - week: 9
    date: Jun 24
    topic: Transformers, Self-attention and BERT (double lecture)
    description: Motivation for the Transformer architecture; Contextualized text representations; The encoder block; Scaled dot-product; Multi-head attention; Parallelizing MHA; Residual connection; BPE; Positional embeddings; Encoder vs Decoder block; Transfer learning; BERT; Pretraining objectives of BERT (MLM, NSP); Pre-training; On LM development in academia vs industry; Model complexity and explainability; Finetuning; Decoder heads in BERT; Finetuning tasks; Pretraining variants; Pretrained LMs architectures;

  - week: 10
    date: Jul 1
    topic: Decoder-only Models and GPT
    description: Types of Transformers (encoder-decoder, encoder-only, decoder-only); Attention masks; Full, prefix and masked language modelling; Autoregressive decoder-only transformers (GPT-2); Zero-shot, one-shot, and few-shot learning; In-context-learning; Zero-shot, one-shot and few-shot prompting; Hallucinations; Brief intro on reasoning and LLMs; Data contamination; Continuous prompts;

  - week: 11
    date: Jul 8
    topic: Contemporary LLMs and Explainability
    description: Instruction tuning; RLHF; Toolformer; Motivations for Explainable AI; Elements of Explainable AI; Local VS global explanations; Ante-hoc and post-hoc explanations; Saliency explanations; Textual explanations; Evaluating explanations; Cognitive biases in humans; Wrong agreement; Likeability-Effectiveness tradeoff; Fairwashing, manipulation, bouncer problem; Antropomorphization of AI;

  - week: 12
    date: Jul 15
    topic: Exam simulation

  - week: 13
    date: Jul 22
    topic: Guest lecture (Mechanistic interpretability, Privacy and Security in LLMs, Culture-aware LLMs)
    description: 
      - Do Language Models Dream of Electric Clocks? (Federico Tiblias, UKP lab)
      - Privacy and Security in Large Language Models (Anmol Goel, UKP Lab)
      - Global Voices, Responsible Models; Cultural Evaluation and Adaptation in LLMs (Cecilia Liu, UKP lab)
---

## Course Overview

This course covers both foundation and up-to-date methodologies for Natural Language Processing (NLP), that today build the backbone of popular AI tools. Starting from the basics (mathematics of deep learning, backpropagation etc.), you will learn how more and more advanced models can understand natural language. By the end of this course, you will be gain understanding of:

- Key machine learning paradigms and concepts
- Both basic and advanced machine learning algorithms/models applied to NLP
- Evaluation, optimisation, and comparison of NLP models
- Applying NLP models and techniques to real-world problems

## Prerequisites

- Basic knowledge of linear algebra and calculus
- Programming experience in Python
- Probability and statistics fundamentals

## Lectures recordings
Available publicly on [YouTube](https://www.youtube.com/watch?v=6uAaPJRJ4yI&list=PLTTKNnlG40NryM57dItbOs9uVuarenyjH)