public class Cat {

public String name;
public String color;

public Cat(string n, string clr){
    name= n;
    color=clr;
    sleeping();
}

    // public Cat() {
    //     system.debug('cat contructor called' );
    // }

    public void sleeping(){
        system.debug(name + ' is sleeping');
    }

    public Cat(){
        system.debug('cat constructor called.');
    }
}
