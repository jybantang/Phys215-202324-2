# Welcome to Physics 215 Repository (v.202223-1)
*by: Johnrob Y. Bantang, Ph.D.*


This is a repository of the codes, notes, and slides used in a course on High-Performance Computing using Julia as the language (Physics 215: Computational Methods of Physics) at the [National Institute of Physics](http://nip.upd.edu.ph), [College of Science](http://science.upd.edu.ph), [University of the Philippines in Diliman](http://upd.edu.ph).

This course is offered during the 1st semester of the academic year 2022-2023.

Most codes are based on those in the books used as textbook and references. 
Copyright mode is MIT since it covers the copyright mode of those references.

Please drop me a [note](mailto:jybantang@up.edu.ph) for any possible copyright problem since I'm making this public for my class.

# Syllabus and Course Guide Outline

Check it [here](SYLLABUS.md).

# Topics
The sequence of topics will generally follow the MAIN book reference following each chapter. Discussions will be live synchronous activity every Thursdays to discuss the chapter and computational physics topics. I expect everyone to use the Tuesday schedule in finishing the allocated homework sessions posted in the Google Classroom. This list may change as determined by the instructor. Each number will generally be allocated for the week number of the semester.

## Session 0
[**Installation and exploration of the Julia language**](00-Intro/README.md)

**OBJECTIVE**: Successfully Explore Julia

## Session 1
[**HPC and the Julia Framework**](01-HPC/README.md)

**OBJECTIVE**: Confirm Julia framework and Base speed

## Session 2
[**Computing performance**](02-Performance/README.md)

**OBJECTIVE**: Submit a performance analysis of a self-implemented physics textbook function using Julia benchmarking tools.

## Session 3
[**Type and type-related performance**](03-Types/README.md)

**OBJECTIVE**: Demonstrate the dynamic programming features of Julia (type dynamism)

## Session 4
[**Fast function calls**](04-Fast-Calls/README.md)

**OBJECTIVE**: Compare benchmark times of different implementation of functions that can be expressed as a recursion relation.

## Mini-project
[**mProject : Mini-project ideas**](09-mProject/README.md)

**OBJECTIVE:** Identify critical principles of simulation and modeling in at a project involving physical system modeling or simulation.

# Submission modes

All submissions must be done via the Google Classroom link.

There are two options for submitting in our Google Classroom. The submission date will be reflected appropriately by the Google Classroom.

For both options, click the appropriate button ("TURN IN")
1. **Option 1 Jupyter nb file:** Upload `Session[n]-[SURNAME-GivenName]-[Exercise/File-short-title].ipynb` and the other required files such as `Session[n]-Function-name1.jl` and `Session[n]-Function-name2.jl` (or similar files).
2. **Option 2 GitHub link:** Create a new Google Doc with the same filename `Session[n]-[SURNAME-GivenName]-[Exercise/File-short-title]` and type there the GitHub link of the code.

Sample name: `Session0-BANTANG-JohnRob-Julia-exploration.ipynb`

**For both cases**, also submit a PDF version of the Jupyter notebook of the same filename base ---after having run all necessary commands--- together with the other functions files as required. **If PDF export does not work** you may opt to submit an HTML-formatted output instead.

Conversion of the notebook to different formats can be achieved in the web-interface via the menu `File / Download as / [Choose "HTML/PDF via ..."]`.
