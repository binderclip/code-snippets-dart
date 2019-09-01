import 'package:xml/xml.dart';

main() {
  var doc = parse(xmlString);
  // print(doc);
  doc.findAllElements("d:response").forEach((element) {
    print(element.findElements("d:href").single.text);
    // print(element);
  });
}

var xmlString = """<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<d:multistatus
	xmlns:d="DAV:"
	xmlns:s="http://ns.jianguoyun.com">
	<d:response>
		<d:href>/dav/test-webdav/points</d:href>
		<d:propstat>
			<d:prop>
				<d:getlastmodified>Tue, 27 Aug 2019 16:30:06 GMT</d:getlastmodified>
			</d:prop>
			<d:status>HTTP/1.1 200 OK</d:status>
		</d:propstat>
	</d:response>
	<d:response>
		<d:href>/dav/test-webdav/points/bar.json</d:href>
		<d:propstat>
			<d:prop>
				<d:getlastmodified>Tue, 27 Aug 2019 16:37:59 GMT</d:getlastmodified>
			</d:prop>
			<d:status>HTTP/1.1 200 OK</d:status>
		</d:propstat>
	</d:response>
	<d:response>
		<d:href>/dav/test-webdav/points/baz.json</d:href>
		<d:propstat>
			<d:prop>
				<d:getlastmodified>Tue, 27 Aug 2019 16:43:31 GMT</d:getlastmodified>
			</d:prop>
			<d:status>HTTP/1.1 200 OK</d:status>
		</d:propstat>
	</d:response>
	<d:response>
		<d:href>/dav/test-webdav/points/foo.json</d:href>
		<d:propstat>
			<d:prop>
				<d:getlastmodified>Tue, 27 Aug 2019 16:37:59 GMT</d:getlastmodified>
			</d:prop>
			<d:status>HTTP/1.1 200 OK</d:status>
		</d:propstat>
	</d:response>
</d:multistatus>""";
