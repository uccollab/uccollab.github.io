---
layout: course
title: Deep Learning For Natural Language Processing 2026
description: Complete crash-course on Natural Language Processing. From basic text classification, all the way to Large Language Models, Reinforcement Learning From Human Feedback etc.

institution: TU Darmstadt
course_key: dl4nlp
course_name: Deep Learning for Natural Language Processing
offering: SoSe 2026
offering_sort: 2026-04-01

year: 2026
term: Summer Semester

time: Tuesdays, 13:30-17:00 AM
course_id: dl4nlp26

schedule:
  - week: 1
    date: Apr 14
    topic: Intro to NLP + Mathematical foundations of Machine Learning
    description: |
      - Course Logistics
      - Definition of text classification and generation task
      - Evaluation
      - Function minimization
      - Efficient computation of gradients
      - Stochastic Gradient Descent (SGD)

  - week: 2
    date: Apr 21
    topic: Log-linear models + Deep Neural Networks
    description: |
      - Fundamentals of machine learning problems
      - Characteristics of the human language
      - Fundamentals of vectors and linear functions
      - Binary classification
      - Tokenization
      - Bag-Of-Words (BoW) and Byte-Pair-Econding (BPE)
      - The sigmoid function
      - Log-linear model (Logistic Regression)
      - Loss functions and Binary Cross-Entropy
      - Online and Minibatch SGD
      - Multi-class classification
      - Continuous Bag-Of-Words (CBOW)
      - Softmax and Temperature
      - Categorical Cross-Entropy Loss

  - week: 3
    date: Apr 6
    topic: Nonlinearity and Language Models 
    description: |
      - Linearity and non-linearity in neural networks
      - Anatomy of a neural network
      - ReLU
      - Fundamentals of probability
      - Classic Language Model
      - Markov chain property for word probability
      - Maximum Likelihood Estimation
      - Neural language models
      - Decoding strategies
      - Perplexity
      - Dot product and cosine similarity
      - Distributional Hypothesis
      - Negative sampling
      - Word2Vec (CBOW and Skip-gram variants)
      - FastText
      - Limits of cosine similarity


  - week: 4
    date: May 5
    topic: Recurrent Neural Networks
    description: |
      - RNN abstraction
      - States and outputs
      - Acceptor and Transducer RNNs
      - Bidirectional RNN
      - Elmann network
      - Vanishing/exploding gradient
      - Gates (hard and soft)
      - LSTMs


  - week: 5
    date: May 12
    topic: Encoder-Decoder and Attention
    description: |
      - NLP "sequence" tasks (classification, labeling, generation)
      - The issue of variable length generation
      - PAD and EOS tokens as "dirty" solutions
      - Encoder-Decoder architecture
      - Teacher forcing
      - Fundamentals of attention (formalization; explainability; generalization, calculation)
      - Cross vs self attention


  - week: 6
    date: May 19
    topic: Transformers and BERT
    description: |
      - Motivation for the Transformer architecture
      - Contextualization
      - The encoder block and scaled dot-product
      - Multi-head attention
      - Residual connection
      - Feed-Forward Network
      - Positional embeddings
      - Transfer learning
      - BERT
      - BERT pre-training (MLM + NSP)
      - On LM development in academia vs industry
      - Model complexity and explainability
      - Finetuning
      - Decoder heads in BERT
      - Finetuning tasks
      - Pretraining variants
      - Pretrained LMs architectures


  - week: 7
    date: May 26
    topic: Decoder-only models and GPT
    description: |
      - Transformer architectures
      - Attention masks
      - Language modelling variants
      - The decoder block
      - Autoregressive decoder-only transformers (GPT)
      - GPT-2
      - Zero-shot, one-shot, and few-shot learning
      - GPT-3 and in-context-learning
      - Zero-shot, one-shot and few-shot prompting
      - Hallucinations
      - Brief intro on reasoning and LLMs

  - week: 8
    date: Jun 2
    topic: Pushing boundaries of LLMs 1
    description: |
      - Instruction tuning
      - RLHF and DPO
      - RAG and Langchain
      - Tool-calling and agents
      - Reasoning in LLMs
      - Chain-Of-Thought prompting
      - Self-consistency
      - Limits of reasoning models
      - Performance optimization in language models
      - Mixed-precision pre-training
      - Quantization
      - KV-caching
      - Adapters and LoRA
      - Grokking

  - week: 9
    date: Jun 9
    topic: Pushing boundaries of LLMs 1
    description: |
      - Motivations for Explainable AI
      - Elements of Explainable AI
      - Local VS global explanations
      - Ante-hoc and post-hoc explanations
      - Saliency VS Textual explanations
      - Evaluating explanations
      - Cognitive biases in humans
      - Mixture of Experts models
      - Dense vs Sparse Layers
      - Routing and Top-K experts mechanism
      - Fundamentals of Vision LLMs (LLAVA, CLIP)
      - Fundamentals of Diffusion LLMs


  - week: 10
    date: Jun 30
    topic: Guest lecture (Cybersecurity, Interpretability, Mental health)
    description: |
      - Confidently Wrong: Why RL-Trained Models Still Ship Exploits ( Bhavyajeet Singh, UKP lab)
      - Practical Bayesian Uncertainty for Language Models (Nico Daheim, UKP Lab)
      - Natural Language Processing for Mental Health (Dr. Hiba Arnaout, UKP lab)


  - week: 11
    date: Jul 07
    topic: Exam simulation
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

## Material

- Lectures recordings are publicly available on [YouTube](https://www.youtube.com/watch?v=9HDZuFR9360&list=PLTTKNnlG40NpSuIqsjByMAALMWQ_EUV9n&index=9).
- Material (slides, exercises, homeworks, and exam solutions etc.) on [Moodle](https://moodle.informatik.tu-darmstadt.de/course/view.php?id=2007).