1. Import the **file `text.txt`** inside **`LinuxProject`** folder ****
mv txt.txt LinuxProject/
cd LinuxProject

2. Display the contents of **`text.txt`** on the terminal.
cat text.txt

3. Append the following text to **`text.txt`**:
    "Let's learn Linux.
    
 echo "Let's learn Linux." >> text.txt

4. Count the number of lines in **`text.txt`**.
wc -l text.txt

5. Search for the word "Love" in **`text.txt`** and display the lines containing it.
grep Love text.txt

6. Replace "Make" with "Do".
sed -i 's/Make/Do/g' text.txt

7. Display only the third word from each line in **`text.txt`**.
awk "{print $3}" text.txt

8. Count the number of words in each line.
awk '{print NF, $0}' text.txt

![alt text](image-1.png)