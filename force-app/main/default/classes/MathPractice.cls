public class MathPractice {
     
    public Decimal practiceFour(decimal amount){
        if (amount <= 0) {
            system.debug('Hatali bir deger girdiniz.');
        }else if(amount <=49){
            system.debug('Bonus kazanamadiniz');
        }else if ( amount <= 199) {
            system.debug('$100-199 tutarindaki alis-veris karsiligi $10 tutarinda bonus kazandiniz.');
        }else if (amount <=499) {
            system.debug('$300-499 tutarindaki alis-veris karsiligi $30 tutarinda bonus kazandiniz.');
        }else if (amount >=500 ) {
            system.debug('$500 ve uzeri tutarindaki alis-veris karsiligi $50 tutarinda bonus kazandiniz.');
        }
            
        return amount;
    }

    public decimal practiceFive(string urun, integer adet){

        decimal sum;

        switch on urun {
            when 'ekmek' {
                sum = 1* adet;
            }
            when 'simit'{
                sum = 2*adet;
            }
            when 'kek'{
                sum = 3*adet;
            }
        }

        return sum;
    }

    public Decimal practiceSix(Decimal kisa, Decimal uzun, String hesaplama){
        String alan='';
        String cevre='';
        Decimal sonuc;
        switch on hesaplama {
            when 'alan' {
                sonuc = kisa * uzun;
                
            }
            when 'cevre' {
                sonuc = (2*kisa) + (2*uzun);
                
            }when else {
                system.debug('Lutfen gecerli bir islem turu giriniz.');
            }
        }   
        return sonuc;

    }

    public decimal practiceSeven(decimal boy, decimal kilo){

    /*İpucu: VKI = Kilo(kg)  / (boy(m)  * boy(m)) return type : string]
    * Extra : a. VKI 'ni hesaplarken boyun karesini ilgili decimal metodu ile alınız.
     İşlem sonucunu virgülden sonra bir basamak olacak şekilde düzenleyiniz. [bknz: Link]  */
        decimal vki = kilo / (boy.pow(2)); 
        decimal setscaleVki = vki.setScale(1);
        //system.debug(setscaleVki);

        if ( 0< vki && vki <=18.4) {
            system.debug(setscaleVki+' Zayifsiniz.');

        }else if (18.5 <= vki && vki  <= 24.9) {
            system.debug(setscaleVki +' Normalsiiz.');

        }else if (25<= vki && vki <=29.9 ) {
            system.debug(setscaleVki + ' Kilolusunuz.');

        }else  {
            system.debug('Lutfen girmis oldugunuz boy ve kilo degerlerini kontrol edin.');
        }

        return vki;
        

    }

    public Integer practiceEight(integer num1, Integer num2){

        integer sum =0;
        if (num1>num2){
            for(integer i=num2; i<=num1; i++){
                sum +=i;
            }
            system.debug('1.sayidan 2.sayiya toplam= ' + sum);
        }else if(num2>num1){
            for(integer i=num1; i<=num2; i++){
                sum += i;
            }
            System.debug('Aradaki sayilarin toplami= ' + sum);
        }else{
            sum = num1 + num2;
            system.debug('Toplam=' + sum);
        }
        return sum;

    }

    public static void ageCalculation(Map<string,Date> mapName){
        
        Map<string,Decimal> mapNameAge = new map<string,Decimal>();

    
        date todaysDate = date.today();
    
        for (String eachKey : mapName.keySet() ) {

            dTarihi = mapName.get(eachKey);
            age= dTarihi.daysBetween(todaysDate);
            ageDays = (age/365).setScale(1);
            

            
        }

        

    }
}