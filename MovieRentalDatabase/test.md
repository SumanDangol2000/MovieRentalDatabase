# Week 5 Homework: Personalized Relational Algebra

- **Student:** Suman  
- **Student ID:** S002  
- **Favorite Number:** 7  

## My Data Record

- **student_id:** S002  
- **studentName:** Suman  
- **favoriteNumber:** 7  
- **randomParagraph:** Mountains rise majestically against the horizon inspiring travelers to explore their silent strength.  

---

## Part 1: Word Extraction Queries

### Query 1: Find My Record

- **Expression:**  
σstudentName = 'Suman'(StudentData)

- **Result:**  
student_id studentName favoriteNumber randomParagraph  
S002 Suman 7 Mountains rise majestically against the horizon inspiring travelers to explore their silent strength.  

---

### Query 2: Extract 3rd Word

- **My 3rd word:** majestically  

- **Expression:**  
πWORD(randomParagraph, 3)(σstudentName='Suman'(StudentData))

- **Explanation:**  
Using an extended projection operator WORD(string, n) to extract the nth word from the text. After selecting my record, we project only the 3rd word from my paragraph.

---

### Query 3: Extract 7th Word

- **My 7th word:** inspiring  

- **Expression:**  
πWORD(randomParagraph, 7)(σstudentName='Suman'(StudentData))

- **Explanation:**  
Select my record first, then project the 7th word from my paragraph using a hypothetical word extraction function.

---

### Query 4: Find all students whose favoriteNumber is greater than mine

- **Expression:**  
σfavoriteNumber > 7(StudentData)

- **Result:**  
All students whose favoriteNumber > 7.

---

### Query 5: Find all students whose favoriteNumber is less than mine

- **Expression:**  
σfavoriteNumber < 7(StudentData)

- **Result:**  
All students whose favoriteNumber < 7.

---

### Query 6: Find students whose randomParagraph contains the same 3rd word as mine

- **My 3rd word:** majestically  

- **Expression:**  
σrandomParagraph CONTAINS 'majestically'(StudentData)

- **Explanation:**  
Select all records where the randomParagraph field includes the word *majestically*.

---

### Query 7: Project only studentName and favoriteNumber for students with favoriteNumber between 20 and 50

- **Expression:**  
πstudentName, favoriteNumber(σ20 ≤ favoriteNumber ≤ 50(StudentData))

- **Result:**  
Displays only the studentName and favoriteNumber columns for students whose favorite number is between 20 and 50.

---

### Query 8: Find my favoriteNumber using only my student_id

- **Expression:**  
πfavoriteNumber(σstudent_id = 'S002'(StudentData))

- **Result:**  
7

---

## Part 2: Set Operations and Multi-Record Comparisons

### Query 9: Union of two groups

- **Goal:** Find all students where favoriteNumber > 50 OR favoriteNumber < 10  

- **Expression:**  
σfavoriteNumber > 50(StudentData) ∪ σfavoriteNumber < 10(StudentData)

- **Result:**  
All students with favorite numbers greater than 50 or less than 10.

---

### Query 10: Set Difference

- **Goal:** Find all students EXCEPT those with favoriteNumber between 20 and 80  

- **Expression:**  
StudentData − σ20 ≤ favoriteNumber ≤ 80(StudentData)

- **Result:**  
Students with favoriteNumber outside the range 20–80.

---

### Query 11: Intersection

- **Goal:** Find students whose favoriteNumber is BOTH > 30 AND < 70  

- **Expression:**  
σfavoriteNumber > 30(StudentData) ∩ σfavoriteNumber < 70(StudentData)

- **Result:**  
Students with favoriteNumber between 31 and 69.

---

### Query 12: Complex Projection

- **Goal:** Show student_id and studentName for students with even favoriteNumbers  

- **Expression:**  
πstudent_id, studentName(σfavoriteNumber % 2 = 0(StudentData))

- **Result:**  
Only IDs and names of students whose favoriteNumber is even.

---

### Query 13: Multi-condition Selection

- **Goal:** Find students whose favoriteNumber = 7 AND studentName ≠ 'Suman'  

- **Expression:**  
σ(favoriteNumber = 7) AND (studentName ≠ 'Suman')(StudentData)

- **Result:**  
**student_id:** S100..
**studentName:** Teresa Griffin..  
**favoriteNumber:** 7..  
**randomParagraph:** Nanotechnology manipulates matter at atomic scale creating materials with novel properties.

---

### Query 14: Comprehensive Query

- **Goal:** Count students whose favoriteNumber is within ±10 of mine  
(7 ± 10 ⇒ range −3 to 17)

- **Expression:**  
COUNT(σ(favoriteNumber ≥ -3) AND (favoriteNumber ≤ 17)(StudentData))

- **Result:**  
Number of students whose favoriteNumber lies between −3 and 17.
