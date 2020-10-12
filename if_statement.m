marks=input("Enter percentage marks");
if(marks>=60)
    fprintf("First")
elseif(marks>=45&marks<60)
    fprintf("Second")
elseif(marks>=30&marks<45)
    fprintf("Third")
else
    fprintf("Fail")
end