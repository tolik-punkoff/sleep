program waiter;
Uses Sysutils;

var Time, Code:Integer; MS:Cardinal;

BEGIN

    if ParamCount > 0 then
    begin
        val (ParamStr(1), Time, Code);
        if Code <> 0 then
        begin
            Writeln ('Not number (error at position ', Code, ')');
            Writeln ('Use sleep.exe <count (sec.)>');
        end
        else
        begin
            Time:=Abs(Time);
            MS:=Time*1000;
            Writeln ('Wait ',Time, ' s.');
            Sleep(MS);
        end;
    end
    else
    begin
        Writeln ('Use sleep.exe <count (sec.)>');
    end;
END.
