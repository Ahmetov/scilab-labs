//var 6

i = 0;
k = 4;

fd = mopen('D:\mis_labs\a.txt', 'wt');

result = [0. 0. 0. 0];
result2 = [0 0 0 0 0 0; 0 0 0 0 0 0; 0 0 0 0 0 0; 0 0 0 0 0 0];
count = 1;

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
