package API_Testing;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;
import javax.xml.transform.Result;
import static org.junit.jupiter.api.Assertions.assertTrue;

public class RunAllTest {

    @Karate.Test
    Karate runPost() {
        return Karate.run("PostGetdel").relativeTo(getClass());
    }
}

