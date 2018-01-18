package io.fulgur.advpl.advpl_lexis;
import io.fulgur.advpl.advpl_lexis.antlr.*;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.UnbufferedCharStream;
import org.antlr.v4.runtime.tree.ParseTree;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;

public class AdvplVisitor extends AdvplExprBaseVisitor {

    @Override
    public Object visitOnlypreproc(AdvplExprParser.OnlypreprocContext ctx) {
        return super.visitOnlypreproc(ctx);
    }

    public ParseTree getParseTreeFromString (String content) throws UnsupportedEncodingException {
        InputStream inputStream = new ByteArrayInputStream(content.getBytes(StandardCharsets.UTF_8.name()));
        UnbufferedCharStream stream = new UnbufferedCharStream(inputStream);
        AdvplExprLexer lexer = new AdvplExprLexer(stream);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        AdvplExprParser parser = new AdvplExprParser(tokens);
        return parser.prog();
    }

}
