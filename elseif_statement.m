x=input("Enter value of x: ");
y=input("Enter Value of y: ");
if(x>=0&&y>=0)
    fun=x+y;
    fprintf("The value of function is %f",fun)
elseif(x>=0&&y<0)
    fun=x+(y*y);
    fprintf("The value of function is %f",fun)
elseif(x<0&&y>=0)
    fun=((x^2)+y)
    fprintf("The value of function is %f",fun)
elseif(x<0&&y<0)
    fun=((x^2)+(y^2))
    fprintf("The value of function is %f",fun)
end