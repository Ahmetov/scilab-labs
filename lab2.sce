//var 7
//распределение Пуассона;  lambda = 30, maximum = 49. нормальное
//7 for mas+-?? (table) select-case funct– в файл

//var 6

//------------------------
//------------------------
//------------------------
//------------------------
//2 lab-------------------
fd = mopen('D:\mis_labs\a.txt', 'wt');

x = 0 //????
matr = zeros(2, 49)
before = 0;
sArray = zeros(1, 400);

for x=0:1:49
    matr(1, x + 1) = x
    before = before + ( %e^(-30) * 30^x ) / factorial(x)
    matr(2, x + 1) = before
end 

summ = 0;
isum = 0;

mfprintf(fd, "\nТабличный метод\n");
for i=1:1:401
    r = rand()
    r2 = rand()
    r3 = rand()
    
    interval = -log(r2)/30;
    isum = isum + interval;
    mfprintf(fd, 'Временной интервал = %f\n', interval);
    for j=2:1:49
        select (1)
            case 1 then
                if(matr(2,j-1)<=r & r<matr(2, j)) then
                z = matr(1, j-1) + (r - matr(2,j-1))*(matr(1,j) - matr(1,j-1)) / (matr(2,j) - matr(2,j-1));
                sArray(i) = z;
                summ = summ + z;
                mfprintf(fd, "Табличный метод = %d\n", z);
                end
            else
                error("error кокой-то")
        end 
    end;
end;   

mSize = summ/400;

D = 0;
for i=1:1:400
    D = D + ((sArray(i) - mSize)^2);
end
D = 1/ 399 * D;


mfprintf(fd, "\n");
mfprintf(fd, "Мат. ожид. практич длин = %f\n", mSize);
mfprintf(fd, "Мат. ожид. теор = 7.5\n");
mfprintf(fd, "Мат. ожид. практич интерв = %f\n", isum/400);
mfprintf(fd, "Дисперсия теор = %f\n", mSize);
mfprintf(fd, "Дисперсия пр длин = %f\n", D);
mfprintf(fd, "Ско т %f\n",sqrt(mSize));
mfprintf(fd, "Ско п %f\n",sqrt(D));


mfprintf(fd, "\nМатрица\n");


//for i=1:1:2                   //матрица вывод 
    //for j=1:1:49
        //mfprintf(fd, "%f [ %d, %d]", matr(i,j), i, j)
        //j = j + 1
    //end
    //mfprintf(fd, "\n")
//end

//2 lab-------------------
//------------------------
//------------------------
//------------------------
//------------------------

i = 0;
k = 4;



result = [0. 0. 0. 0];
result2 = [0 0 0 0 0 0; 0 0 0 0 0 0; 0 0 0 0 0 0; 0 0 0 0 0 0];
count = 1;

mfprintf(fd, "\nТипы - адреса\n");
while i < 400
    message = " тип";
    tmp = rand();
    tmp2 = rand();
    if tmp < 0.28 then
        message = "1" + message;
        //.........................................start adress 1   correct
        if tmp2 < 0.01 then
            result2(1,1) = result2(1,1) + 1;
            message = message + " = адресс 1";
        elseif tmp2 < 0.39 then
            result2(1,2) = result2(1,2) + 1;
            message = message + " = адресс 2";
        elseif tmp2 < 0.71 then
            result2(1,3) = result2(1,3) + 1;
            message = message + " = адресс 3";
        elseif tmp2 < 0.76 then
            result2(1,4) = result2(1,4) + 1;
            message = message + " = адресс 4";
        elseif tmp2 < 0.94 then
            result2(1,5) = result2(1,5) + 1;
            message = message + " = адресс 5";
        elseif tmp2 < 1 then
            result2(1,6) = result2(1,6) + 1;
            message = message + " = адресс 6";
        end;
        //.........................................end adresses 1
        result(1) = result(1) + 1;
        mfprintf(fd, message + '\n');
    elseif tmp < 0.46 then
        message = "2" + message;
        //.........................................start adress 2 correct
        if tmp2 < 0.01 then
            result2(2,1) = result2(2,1) + 1;
            message = message + " = адресс 1";
        elseif tmp2 < 0.38 then
            result2(2,2) = result2(2,2) + 1;
            message = message + " = адресс 2";
        elseif tmp2 < 0.62 then
            result2(2,3) = result2(2,3) + 1;
            message = message + " = адресс 3";
        elseif tmp2 < 0.86 then
            result2(2,4) = result2(2,4) + 1;
            message = message + " = адресс 4";
        elseif tmp2 < 0.94 then
            result2(2,5) = result2(2,5) + 1;
            message = message + " = адресс 5";
        elseif tmp2 < 1 then
            result2(2,6) = result2(2,6) + 1;
            message = message + " = адресс 6";
        end;
        //.........................................end adresses 2
        result(2) = result(2) + 1;
        mfprintf(fd, message + '\n');
    elseif tmp < 0.67 then
        message = "3" + message;
        //.........................................start adress 3 correct
        if tmp2 < 0.01 then
            result2(3,1) = result2(3,1) + 1;
            message = message + " = адресс 1";
        elseif tmp2 < 0.03 then
            result2(3,2) = result2(3,2) + 1;
            message = message + " = адресс 2";
        elseif tmp2 < 0.06 then
            result2(3,3) = result2(3,3) + 1;
            message = message + " = адресс 3";
        elseif tmp2 < 0.65 then
            result2(3,4) = result2(3,4) + 1;
            message = message + " = адресс 4";
        elseif tmp2 < 0.74 then
            result2(3,5) = result2(3,5) + 1;
            message = message + " = адресс 5";
        elseif tmp2 < 1 then
            result2(3,6) = result2(3,6) + 1;
            message = message + " = адресс 6";
        end;
        //.........................................end adresses 3
        result(3) = result(3) + 1;
        mfprintf(fd, message + '\n');
    elseif tmp < 1 then
        message = "4" + message;
        //.........................................start adress 4   
        if tmp2 < 0.17 then
            result2(4,1) = result2(4,1) + 1;
            message = message + " = адресс 1";
        elseif tmp2 < 0.36 then
            result2(4,2) = result2(4,2) + 1;
            message = message + " = адресс 2";
        elseif tmp2 < 0.4 then
            result2(4,3) = result2(4,3) + 1;
            message = message + " = адресс 3";
        elseif tmp2 < 0.88 then
            result2(4,4) = result2(4,4) + 1;
            message = message + " = адресс 4";
        elseif tmp2 < 0.96 then
            result2(4,5) = result2(4,5) + 1;
            message = message + " = адресс 5";
        elseif tmp2 < 1 then
            result2(4,6) = result2(4,6) + 1;
            message = message + " = адресс 6";
        end;
        //.........................................end adresses 4
        result(4) = result(4) + 1;
        mfprintf(fd, message + '\n');
    end;
    //tmp3 = rand()
    //for j=2:1:50
        //if matr(2,j-1) <= tmp3 & tmp3 <= matr(2,j)
           //z = j-1 + ((tmp3 - matr(2,j-1)) * (j - j-1)  ) / ( (matr(2,j)) - matr(2, j-1) )
           //mfprintf(fd, "%d", z);
           //disp(int(z))
        //end;
    //end;
    i = i + 1;
end

mfprintf(fd, '\nКоличества типов\n');
mfprintf(fd, "%d %d %d %d\n\n", result(1), result(2), result(3), result(4));

mfprintf(fd, 'Вероятности\n');
mfprintf(fd, "%f %f %f %f\n", result(1) / 400, result(2) / 400, result(3) / 400, result(4) / 400);

mfprintf(fd, '(----------- 2 часть ---------)\n');
mfprintf(fd, 'Коичества\n');
i = 1
j = 1
while i <= 4
    while j <= 6
        mfprintf(fd, "%d ", result2(i,j))
        j = j + 1
    end
    mfprintf(fd, "\n")
    j = 1
    i = i + 1
end

mfprintf(fd, 'Вероятности\n');

i = 1
j = 1
while i <= 4
    while j <= 6
        mfprintf(fd, "%f ", result2(i,j) / result(i))
        j = j + 1
    end
    mfprintf(fd, "\n")
    j = 1
    i = i + 1
end

mclose(fd);
