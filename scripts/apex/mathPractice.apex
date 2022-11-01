MathPractice mp = new MathPractice();
decimal x = mp.practiceSix(5.25, 10.65, 'alan');
system.debug('dikdortgenin alani= ' + Math.round(x));
Decimal y =  mp.practiceSix(5.25, 10.65, 'cevre');
system.debug('dikdortgenin cevresi= ' + Math.round(y));
Decimal z = mp.practiceSix(5.25, 10.65, 'xxx');



MathPractice mt = new MathPractice();
decimal ucret1= mt.practiceFive('ekmek', 5);
system.debug('Almis oldugunuz 5 adet ekmek tutari= ' + ucret1 + ' dolardir.' );

decimal ucret2=mt.practiceFive('simit',8);
system.debug('Almis oldugunuz 8 adet simit ' + ucret2 + 'dolardir.');

Decimal ucret3 = mt.practiceFive('kek',5);
system.debug('Almis oldugunuz 5 adet kek ' + ucret3 + 'dolardir.');

// MathPractice mp = new MathPractice();
// mp.practiceFour(500);


MathPractice mt = new MathPractice();
mt.practiceSeven(1.78, 55);
mt.practiceSeven(1.70, 70);
mt.practiceSeven(1.79, 95);
mt.practiceSeven(1.80, 200);

MathPractice mt = new MathPractice();
mt.practiceEight(10, 20);
mt.practiceEight(20, 10);
mt.practiceEight(50, 50);


Map<String,Date> mapAgeCal = new Map<string,Date>();
mapAgeCal.put('David', date.newInstance(1980, 09, 30));
mapAgeCal.put('Sam', date.newInstance(1973, 01, 06));
mapAgeCal.put('Mary', date.newInstance(1988, 02, 28));
mapAgeCal.put('Alex', date.newInstance(1994, 06, 17));
mapAgeCal.put('Shelly', date.newInstance(1990, 03, 17));

