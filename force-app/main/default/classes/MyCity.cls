public class MyCity {
   // 6. MyCity clasın'a stringMethod adında yeni bir metod oluşturun. Bu method içerisinde bir 'I am a salesforce Developer' cümlesini bir string variable'a atayın.
   //a. 'force' kelimesi bulunup bulunmadığını kontrol edin,
    //b. Kaç karakter olduğunu hesaplayınc  
    //c. Tüm karakterleri büyük harfe dönüştürün ve bunları System.debug yardımı ile görüntüleyin. [*bknz:Link]
   public String favoriteCafe;
   public string favoritePark;
   public string favoriteMall;
   public string favoriteStore;

   public string myFavoriteLocations(string city){

   string place = city;

     system.debug('The most beautiful cafe is in my city= ' + favoriteCafe + ', The most beautiful park is= ' + favoritePark + 
     ', most beautiful mall= ' + favoriteMall + ', most beautiful store= ' + favoriteStore);

     
     return place;
   }

   public void printString(integer num, string text){

    for (Integer i = 1; i <= num; i++) {

      system.debug(text +' '+ i);
    }
   }
    

    // public void stringMethod(){
    //     string mySentence = 'I am a salesforce Developer';
    //     boolean containsForce = mySentence.contains('force');
    //     Integer length = mySentence.length();
    //     string upperCase = mySentence.toUpperCase();

    //     system.debug('Cumlemizde force kelimesi var mi? ' + containsForce);
    //     system.debug('Cumledeki karakter sayisi= ' + length);
    //     system.debug('Cumlenin yeni hali= ' + upperCase);
    //     }

    //    /* 7. MyCity class'ına dateMethod adında yeni bir metod oluşturun. Bu Method içerisinde bugünün tarihini tanımlayıp System.debug yardımı ile yazdırın.
    //     * Extra : Aynı method içerisinde ayrı bir variable'da şuanki tarih ve saati tanımlayın ve 50 saat sonrasını System.debug yardımı ile yazdırın.[*bknz:Link]  */
    //     public void dateMethod(){
    //         date today = date.today();
    //         Datetime dateAndTimeNew =  Datetime.now();
    //         Datetime add50Hours = Datetime.now().addHours(50);

    //         system.debug('Bugunn tarihi= ' + today);
    //         system.debug('Bugunun tarih ve saati= ' + dateAndTimeNew);
    //         system.debug('50 saat sonrasi+ ' + add50Hours);

    //     }
    //     /*8. MyCity clasında bulunan cityInformation metodunu kullanarak bulunduğunuz ülkenin kuruluş tarihini ve bulunduğunuz lokasyonun gün doğumu saatini System.debug yardımı ile yazdırın. [*bknz:Link]
    //     * Extra : İçinde bulunduğumuz tarihten 36 ay öncesini System.debug yardımı ile yazdırın. */

    //     public void CityInformation(){
    //         string country='Italy';
    //         string city = 'Floerence';
    //         system.debug('I want to visit ' + city + ' ' + country);

    //         date Canada = date.newInstance(1867, 07, 01);
    //         system.debug('KANADANIN KURULUS TARIHI ' + Canada );

    //         time sunRise = Time.newInstance(6, 45, 0,0);
    //         system.debug('Gun dogumu saati= ' + sunRise);
            
    //         system.debug('Bu gunun tarihi = ' + Date.today() + ' ve 36 ay oncesinin tarihi= ' + Date.today().addMonths(-36));
    //     }



}
