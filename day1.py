num1=50
num2=50.5
firstname='dan'
secondname='Gabriel'
x= False
print (num1)
print (num2)
print (firstname)
print (secondname)
print  (x)


word='we\'re brothers from the other side of the town' #Backward slash denotes the escape character
print(word)
#the backward slash n denotes new line
word2 ='variable name cannot start with a number\nvariable cannot have space'
print (word2)

#the three quotes denote multiline character
word3 = '''variable name cannot start with a number
variable name cannot have a space
variable naming cannot have any special character'''
print(word3)


#string concatenation
print('hello'+ ' '+'world') #joining of sting and string
print ('Hello', firstname) #joining string and variable
print(firstname, secondname)



#string formating

score1=75
score2=90
score3=85

report = 'Ade pass mark in maths is {}, {} in English and {} in chemistry'
print(report.format(score1, score2, score3))
print ('\n')
       #alternatively

print(f'Ade pass mark in maths is {score1}, {score2} in chemistry {score3} in english')




#string method
word1= 'school'
word2= 'SCHOOL'
word3= 'python is fun'
word4= '   info@gmail.com'

print(word1.upper())
print(word2.lower())
print(word3.title())
print(word3.capitalize())
print(word3.split())
print(word4.strip())
