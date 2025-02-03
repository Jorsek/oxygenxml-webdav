package animo.oxygenxml.webdav;

import ro.sync.exml.plugin.urlstreamhandler.URLStreamHandlerPluginExtension;

import java.net.URLStreamHandler;

/**
 * @author <a href="mailto:shabanovd@gmail.com">Dmitriy Shabanov</a>
 */
public class URLHandler implements URLStreamHandlerPluginExtension {

    public static final String WEBDAV = "webdav";
    public static final String WEBDAVS = "webdavs";
    public static final String EDIT_IN_OXYGEN="edit-in-oxygen";

    @Override
    public URLStreamHandler getURLStreamHandler(String protocol) {
        if (EDIT_IN_OXYGEN.equals(protocol)) {
            return new WebDAV_Handler();
        }

        return null;
    }
}
