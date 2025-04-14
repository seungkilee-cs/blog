+++
date = "2025-04-14T13:11:13+09:00"
draft = true
categories = []
tags = ["English"]
title = "Tree"
summary = ""
+++

# **Tree Algorithms**

## **Tree Traversals**

- [ ] **DFS Traversals**
  - [ ] Inorder Traversal (Binary Tree, Recursive/Iterative, Left-Root-Right)
  - [ ] Preorder Traversal (Binary Tree, Recursive/Iterative, Root-Left-Right)
  - [ ] Postorder Traversal (Binary Tree, Recursive/Iterative, Left-Right-Root)
  - **Tags**: Depth-First Search (DFS), Recursive Patterns, Stack Simulation for Iterative
- [ ] **BFS Traversals**
  - [ ] Level Order Traversal (Binary Tree, Queue-Based)
  - [ ] Zigzag Level Order Traversal (Binary Tree, Queue-Based, Alternating Levels)
  - **Tags**: Breadth-First Search (BFS), Queue Simulation
- [ ] Morris Traversal
  - **Tags**: Inorder Without Recursion or Stack, Threaded Binary Trees

## **Tree Properties and Operations**

- [ ] Height of a Tree
  - **Tags**: Recursive/Iterative DFS, Longest Path from Root to Leaf
- [ ] Depth of a Node
  - **Tags**: Path Length from Root to Node
- [ ] Size of a Tree
  - **Tags**: Total Number of Nodes
- [ ] Balancing Operations
  - AVL Trees (Self-Balancing Binary Search Tree)
  - Red-Black Trees (Self-Balancing Binary Search Tree with Color Property)
  - **Tags**: Balanced Trees, Rotation Operations
- [ ] Mirror Image of a Tree
  - **Tags**: Recursive Swap of Left and Right Subtrees

## **Tree Construction Problems**

- [ ] Construct Binary Tree from Preorder and Inorder Traversals
  - **Tags**: Divide and Conquer, Recursion
- [ ] Construct Binary Tree from Postorder and Inorder Traversals
  - **Tags**: Divide and Conquer, Recursion
- [ ] Serialize and Deserialize Binary Tree
  - **Tags**: BFS/DFS for Serialization, String Parsing

## **Binary Search Trees (BST)**

### BST Operations:

- [ ] Search in a BST
  - **Tags**: Recursive/Iterative DFS, Ordered Property Utilization
- [ ] Insert into a BST
  - **Tags**: Ordered Property Maintenance
- [ ] Delete from a BST
  - **Tags**: Node Replacement Techniques (Inorder Successor/Predecessor)

### Common BST Problems:

- [ ] Validate BST Property
  - **Tags**: Inorder Traversal Validation
- [ ] Lowest Common Ancestor in BST
  - **Tags**: Ordered Property Utilization

## **Special Trees**

### Tries (Prefix Trees):

- [ ] Insert Word into Trie
  - **Tags**: Character-by-Character Insertion, HashMap or Array Nodes
- [ ] Search Word in Trie (Exact Match or Prefix Match)
  - **Tags**: Character-by-Character Search

### Segment Trees:

- [ ] Range Sum Query (Point Update)
  - **Tags**: Divide and Conquer, Lazy Propagation for Updates

### Fenwick Trees (Binary Indexed Trees):

- [ ] Range Sum Query (Efficient Updates)
  - **Tags**: Cumulative Frequency Arrays

## **Advanced Patterns and Techniques**

### Recursive Patterns:

1. Base Case Identification:
   - Leaf Node or Null Node as Base Case.
2. Divide Problem into Subproblems:
   - Solve for Left and Right Subtrees.
3. Combine Results:
   - Aggregate Results from Subtrees to Solve Parent Problem.
     **Example Problems**:
   - Maximum Path Sum in Binary Tree.
   - Diameter of Binary Tree.

### Iterative Solutions:

1. Simulate Recursion Using Stacks for DFS.
2. Use Queues for BFS.
   **Example Problems**:
   - Iterative Inorder Traversal.
   - Level Order Traversal.

## **Common Problem Types**

### Path Problems:

1. Path Sum Problems:
   - Find if a Path with Given Sum Exists.
   - Find All Paths with Given Sum.
     **Tags**: DFS Backtracking.
2. Maximum Path Sum in Binary Tree:
   **Tags**: Divide and Conquer, Global Variable for Maximum.

### Ancestor Problems:

1. Lowest Common Ancestor in Binary Tree:
   **Tags**: Postorder Traversal.

### Subtree Problems:

1. Count Nodes in Subtree.
2. Sum of Values in Subtree.
   **Tags**: DFS Aggregation.

### Boundary View Problems:

1. Left View/Right View of Binary Tree.
2. Top View/Bottom View of Binary Tree.
   **Tags**: BFS with Horizontal Distance.

### Construction Problems:

1. Construct Balanced BST from Sorted Array.
2. Convert BST to Doubly Linked List.
   **Tags**: Inorder Traversal.

## **Decision Trees**

1. Classification and Regression Trees (CART):
   - Gini Index for Splitting Nodes.
   - Greedy Approach to Minimize Cost Function.
2. ID3 Algorithm:
   - Information Gain for Splitting Nodes.
3. C4.5 Algorithm:
   - Gain Ratio for Splitting Nodes.
