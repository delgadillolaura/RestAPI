package stepDefinitions;

import io.cucumber.java.Before;

public class Hooks {
    @Before
    public void beforeTest() throws Exception {
        Thread.sleep(60000);
    }
}
