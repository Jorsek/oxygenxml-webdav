package animo.oxygenxml.webdav;

import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;

/**
 * @author <a href="mailto:shabanovd@gmail.com">Dmitriy Shabanov</a>
 */
public class WebDAV_Handler extends ro.sync.net.protocol.http.Handler {

    public URLConnection openConnection(URL u) throws IOException {
        String protocol = u.getProtocol();
        if (URLHandler.EDIT_IN_OXYGEN.equals(protocol)) {
          return super.openConnection(new URL(u.toString().substring(protocol.length() + 1)));
        }

        return super.openConnection(u);
    }
}
