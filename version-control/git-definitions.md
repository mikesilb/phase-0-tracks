# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

It allows multiple and successive versions of a given code/file to be individually accounted for and timestamped.  This would allow any previous version, at any point along the process/project to be viewed and/or modified in a way that entirely keeps track of all modifications and stages along the way.  This is highly important towards observing the progress/evolution of code from the beginning of the project until the current point.


* What is a branch and why would you use one?

A branch is when the master (default) branch is divided, which allows one or more individuals to work on one or more branches, rather than to make any modifications on the master.  In other words, it is better to keep the master as pure as possible while allowing the subsequent branches to be modified and also (at the discretion of the coder) dividing specific parts of the project to be worked on to multiple branches (where each branch can focus on the functionality of an individual aspect or multiple aspects of the project). By keeping the master essentially unchanged while leaving branches to be modified, it allows for many people to modify and create many different parts of the project while still having a core master version that everything stems off from.


* What is a commit? What makes a good commit message?

A commit occurs at any point when the coder is ready to save a modified/updated (or initial) version of the code using git.  This generates a timestamped and updated version that can be assessed with respect to prior and/or subsequent versions of code and also can be modified at any future point in time.  One aspect of solid coding practice is to add a commit message that states in the coder's own words how this version has changed from any previous versions.  The more specific the commit message is in terms of what the alterations have been, the more useful and understandable it will be as other coders view the code and its respective versions.



* What is a merge conflict?

A merge conflict happens when two or more individuals perform differing (and generally conflicting) alterations of a given code or file that makes any subsequent merges by git essentially nontrivial to execute.  One example of this taking place is when two people who are working on the same code also happen to modify the identical location.  In this scenario, 'person A' creates 'modification A' while 'person B' creates 'modification B'.  If person A's version gets merged with person B's version, it will not be apparent to git regarding how these two differing versions can be reconciled upon this merge.  Another example of a merge conflict is when one person modifies a section of a given file while another person decides to delete that same file.  

