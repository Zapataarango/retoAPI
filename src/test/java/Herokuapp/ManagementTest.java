package Herokuapp;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;



public class ManagementTest {

    @Test
    void testParallel(){
        Results results =  Runner.path("classpath:users").outputCucumberJson(true).tags("~@ignore").parallel(4);
      //  generateReport(results.getReportDir());
    }


}
