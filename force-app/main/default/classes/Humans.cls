public  class Humans {
    public string fullName(string firstName, string LastName) {
        string upperFirstName= firstName.toUpperCase();
        string upperLastName= LastName.toUpperCase();
        string fullName= upperFirstName+ ''+ upperLastName;
        return fullName;

    }

    public integer yas (date dogumTarihi){
        date today = date.today();// bugunun tarhi icin\
        integer gunler = dogumtarihi.daysBetween(today);
        integer a =integer.valueOf(gunler/365); // toplam gun sayisini 365 e bolerek yasi hesapliycaz ama virgullu bir sayi cikabilir. burda yazdigimiz valueof methodu ile normal sayiya cevirirz
        return a;
    }
}