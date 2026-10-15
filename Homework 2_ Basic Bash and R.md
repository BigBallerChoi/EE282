Joshua Choi  
10/13/2026  
Eco Evo 282  
Dr. Emerson  

## **_Project Topic Proposal_**

### **Question 1:**
A student is currently in the directory /User/Downloads/dir1. Can you write a Bash script that allows the user to delete dir2 and create a new directory called dir4 inside dir3? The directory is depicted as a tree below:
````
User  
|- Applications  
|- Downloads  
|&emsp;|- file1  
|&emsp;|- file2  
|&emsp;|- dir1  
|&emsp;&emsp;|- dir2  
|- Movies  
|- Music  
|- Pictures  
|- Desktop  
 &emsp;|- file3  
 &emsp;|- dir3  
 &emsp;&emsp;|- file4  
 &emsp;&emsp;|- file5
````
### **Answer 1:**   
````
rmdir dir2  
cd ../../  
cd Desktop/dir3  
mkdir dir4
````
### **Question 2:**
A student is having trouble comparing data in various formats generated within R. The student has generated a matrix and a data frame using the following R script:
````
mymatrix <- matrix(1:9, nrow = 3, ncol = 3, dimnames = list(NULL, c("col1", "col2", “col3”)))  
mydf     <- data.frame(col1 = 1:3, col2 = 4:6, col3 = 7:9)
````
What data is extracted from the matrix and data frame in these scenarios?
````
1) mymatrix[,1]  
2) mydf[,1]  
3) mydf[1]  
4) mydf[[1]]
````
What R script could I use to extract from a matrix to get this data?
````
5) 2 5 8
````
What R script could I use to extract from a matrix to get this data?
````
6) [1] 5
````
### **Answer 2:**
````
1) [1] 1 2 3  
2) [1] 1 2 3  
3)  	Col1  
   1	1  
   2	2  
   3	3  
4) [1] 1 2 3  
5) mymatrix\[2,]  
6) mydf\[2,2\]
````
### **Question 3:** 
A student needs to share access to a directory and file with a peer who is also in the same lab group as her. How can the student give read and write permissions to the directory (/User/Desktop/dir3) and file (/User/Desktop/dir3/file4) to her peer without exposing the student’s entire directory. The directory is depicted as a tree below:
````
User  
|- Applications  
|- Downloads  
|&emsp;|- file1  
|&emsp;|- file2  
|&emsp;|- dir1  
|&emsp;&emsp;|- dir2  
|- Movies  
|- Music  
|- Pictures  
|- Desktop  
 &emsp;|- file3  
 &emsp;|- dir3  
 &emsp;&emsp;|- file4  
 &emsp;&emsp;|- file5
````
### **Answer 3:** 
````
chmod g+x /User /User/Desktop /User/Desktop/dir3  
chmod g+rw /User/Desktop/dir3  
chmod g+rw /User/Desktop/dir3/file4
````
