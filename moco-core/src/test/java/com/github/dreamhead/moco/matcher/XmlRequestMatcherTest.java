package com.github.dreamhead.moco.matcher;

import com.github.dreamhead.moco.HttpRequest;
import com.github.dreamhead.moco.extractor.ContentRequestExtractor;
import com.github.dreamhead.moco.model.DefaultHttpRequest;
import org.junit.Test;

import static com.github.dreamhead.moco.Moco.text;
import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.MatcherAssert.assertThat;

public class XmlRequestMatcherTest {
    @Test
    public void should_return_false_for_empty_content() {
        XmlRequestMatcher unitUnderTest = new XmlContentRequestMatcher(text("<request><parameters><id>1</id></parameters></request>"), new ContentRequestExtractor());
        HttpRequest request = DefaultHttpRequest.builder().withStringContent("").build();
        assertThat(unitUnderTest.match(request), is(false));
    }
}
