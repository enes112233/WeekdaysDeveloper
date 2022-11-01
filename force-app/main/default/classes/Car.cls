public class Car {
    public string carColor ='';
    public string carName = '';
    integer maxSpeedKmPerHr= 150;

    public void switchOn(){
        system.debug('Starting the Car NOW.');
    }

    public void drive(){
        switchOn();
        system.debug('driving ' + carName);
    }
    public void drivingAtMaxSpeed(){
        String drivingDescription ='driving ' + carName + ' at ' + maxSpeedKmPerHr + 'km/hr';
        system.debug(drivingDescription);
    }
   
}
