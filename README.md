# How-to-Catch-a-Cheater
This project compares how similar two documents are, using a
technique known as winnowing to produce document fingerprints. It is much more efficient to
compare the document fingerprints to each other than the documents themselves.
# The problem
Every year some students beg, “borrow”, or steal solutions to assessments from others and then
copy some (or even all) of the answers they obtained. Submitting work that isn’t your own is
cheating and unfair to those who have worked hard and done the assessment themselves. It even
disadvantages the person cheating, as they miss learning important skills they will need later in their
degree/career.
To combat cheating, we need a robust way of detecting it, to identify the students who have
cheated and apply appropriate penalties. Penalties could include awarding a failing grade in the
course so they can repeat the course and learn the material they need to grasp. 
For small courses, it is relatively simple to compare one student’s work against that of every other
student in the class simply by having a person look at all the solutions in quick succession. This
becomes much more difficult to do at scale when there can be over 1000 students in the class.
Hence, we need a way to automate the comparison of one student’s work with that of others.
It can be computationally expensive to compare an entire document against another one to see if
they are the same. When many files and students are involved, the amount of work can become
significant, even for a computer. For example, to check the MATLAB project submissions for
misconduct would require over 5,000,000 document comparisons. Rather than comparing an entire
document against other documents, a more efficient approach is to calculate a fingerprint for each
document, which identifies key aspects (i.e., substrings) of that document. We can then compare the
document fingerprints rather than the documents themselves (which is much faster to do).
The savings can be significant if we are then comparing that fingerprint against 1000 others.

1 Winnowing is an agricultural term for the process of separating wheat (the bits of the plant you want) from
chaff (the bits you don’t want).

2 We use a software package called Measure of Software Similarity (MOSS) developed at Stanford university.
