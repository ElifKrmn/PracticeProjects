public  class selamFor {
    public string selam (integer n, string language) {
        string selam = selam(language);
        string tselam='';
for(integer i=1 ; i<=n; i++){
tselam =tselam + ' ' + selam;
    }
    return tselam;
    }
}