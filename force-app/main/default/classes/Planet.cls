public class Planet {
    public string name;
    integer solarNumber;
    integer numberOfMoon;

    public void details() {
     system.debug('Planet\'s name: ' + name + ', number of solarsystem'+ solarNumber+ 'number of moonsof the planet'+ numberOfMoon);   
    }
    public Planet(){
        details();
    }
    public Planet(string name1, integer position, integer moon){
        name=name1;
        solarNumber=  position;
        numberOfMoon=moon;
        details();

    }
    public Planet(string name2){
        name=name2;
        details();

    }
}