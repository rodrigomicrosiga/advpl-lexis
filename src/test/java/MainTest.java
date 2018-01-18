import static org.junit.Assert.assertEquals;
import java.io.UnsupportedEncodingException;
import io.fulgur.advpl.advpl_lexis.AdvplVisitor;
import org.antlr.v4.runtime.tree.ParseTree;
import org.junit.Test;

public class MainTest {

    @Test
    public void evaluateTautology () {
        assertEquals(true, true);
    }

    @Test
    public void visitOnlypreproc () throws UnsupportedEncodingException {
        AdvplVisitor visitor = new AdvplVisitor();
        ParseTree tree = visitor.getParseTreeFromString("#defcomp");
        visitor.visit(tree);
    }
}
