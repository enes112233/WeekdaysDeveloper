@isTest
public class CalculatorTest {
    @isTest
    private static void testPrintMethod() {
        Calculator calc = new Calculator();
        calc.printNewMessage('Calling from test method. so chill.');
        calc.printAndReturnMessage('Calling from test method, again. so chill');

    }
}
