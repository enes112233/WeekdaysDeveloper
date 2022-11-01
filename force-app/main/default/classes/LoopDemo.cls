public class LoopDemo {
    public void print_int_while(){
        Integer count = 1;
        while (count <= 25) {
            system.debug(count);
            count ++;
        }
    }
    
    public void print_N_numbers(Integer n){
        for (integer i=0; i<n; i++) {
            system.debug(i);
        }
    }

    public void print_N_odd_numbers(integer startInt, Integer endInt){

        for (integer i=startInt; i<endInt; i++) {
            Integer modI = Math.mod(i, 2);
            
            if (modI == 1) {
                system.debug(i);
            }
        }
        
    }

    

    

}
