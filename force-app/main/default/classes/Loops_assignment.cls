public class Loops_assignment {
    Integer factorialValue = 1;

    public Loops_assignment() {
        ForLoops(factorialValue);
        system.debug('Factorial value calculating');

    }

    public Integer ForLoops(integer n){
        for (integer i=1; i<=n; i++) {
            
            factorialValue = factorialValue * i;

        }
        return factorialValue;
    }
    
}
