public class ValidateAddress {
    public void ValidateHomeAddress() {
string houseName= 'Hollywood Blv';

string streetName='Istanbul Street';

string cityName='los angeles';

string stateName='ca';

string stateIsoCode='3166-2';

string countryName='USA';

string countryIsoCode='iso 3166-3';

system.debug(streetName.length());

boolean checkApex = streetName.contains(houseName);
system.debug('street name contains a house name in it' +checkApex);

boolean checkApex2 = streetName.contains(stateIsoCode);
system.debug('the street name contains the state iso code in it ' +  checkApex2);

system.debug(cityName.toUpperCase());

system.debug(stateName.toUpperCase());

system.debug(countryName.toUpperCase());
//string storageData = stateIsoCode + ' ' + countryIsoCode + ' '+ countryName;
//system.debug(storageData.toUppercase());

string storageData2 = cityName + ' ' + stateName;
system.debug(storageData2.toLowerCase());
string var1 = houseName + ' ' + streetName + ' ' + cityName + ' ' + stateName + ' ' + countryName;
system.debug(var1);

    }
}