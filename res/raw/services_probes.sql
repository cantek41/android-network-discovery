BEGIN TRANSACTION;
CREATE TABLE services_probes (_id INTEGER PRIMARY KEY, service TEXT, regex TEXT, desc TEXT);
CREATE INDEX regexIndex ON services_probes (regex);
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('ftp', '^220 Welcome to ([-.\w]+) FTP.*\r\n$', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('ftp', '^220 ([-.\w]+) [-.\w ]+ftp.*\r\n$', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('ftp', '^220-([-.\w]+) [-.\w ]+ftp.*\r\n220', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('ftp', '^220 [-.\w ]+ftp.*\r\n$', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('ftp', '^220-[-.\w ]+ftp.*\r\n220', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('ftp', '^220[- ].*ftp server.*\r\n', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('ftp', '^220-\r?\n220 - ftp', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('ftp', '^220 .*\r\n530 Please login with USER and PASS\.\r\n530 Please login with USER and PASS\.\r\n', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('imap', '^\* OK ([-.\w]+) [-.\w,:+ ]+imap[-.\w,:+ ]+\r\n$', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('imap', '^\* OK [-.\w,:+ ]+imap[-.\w,:+ ]+\r\n$', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('napster', '^1$', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('nntp', '^200 [-\[\]\(\)!,/+:<>@.\w ]*nntp[-\[\]\(\)!,/+:<>@.\w ]*\r\n$', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('pop3', '^\+OK [-\[\]\(\)!,/+:<>@.\w ]+\r\n$', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('smtp', '^220[\s-].*?E?SMTP[^\r]*\r\n', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('smtp', '^572 Relay not authorized\r\n', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('ssh', '^SSH-([.\d]+)-', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('beep', '^RPY \d \d \. \d \d+\r\nContent-Type: application/beep\+xml\r\n', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('vnc', 'RFB \d\d(\d)\.\d\d\d\n', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('quake3', '^\xff\xff\xff\xffdisconnect$', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('postgresql', '^E\0\0\0.S\w+\0C0A000\0Munsupported frontend protocol 65363', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('postgresql', '^E\0\0\0.S\w+\0C0A000\0MProtocole non support\?e de l''interface 65363', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('postgresql', '^E\0\0\0.S\w+\0C0A000\0Mel protocolo 65363', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('sip', '^SIP/2\.0 ([-\w\s.]+)\r\n.*Server: ([-\w\s/_.]+)\r\n', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('sip', '^SIP/2\.0 ([-\w\s.]+)\r\n', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('sip', '^SIP/2\.0 ([-\w\s.]+)\r\n.*Server: ([-\w\s/_.]+)\r\n', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('sip', '^SIP/2\.0 ([-\w\s.]+)\r\n', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('radmin', '^\x01\x00\x00\x00\x25.\x00..\x08.\x00..', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('mdns', '^\0\0\x84\0\0\0\0\x05\0\0\0\0', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('snmp', '^..\x02\x01\x030.\x02\x02Ji\x02.{3,4}\x04\x01.\x02\x01\x03\x04', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('oracle-tns', '^\0.\0\0[\x02\x04]\0\0\0', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('socks5', '^\x05', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('ms-sql-s', '^\x04\x01\x00\x25\x00\x00\x01\x00\x00\x00\x15\x00\x06\x01\x00\x1b\x00\x01\x02\x00\x1c\x00\x01\x03\x00\x1d\x00\x00\xff\x0a', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('ms-sql-s', '^\x04\x01\x00\x25\x00\x00\x01\x00\x00\x00\x15\x00\x06\x01\x00\x1b\x00\x01\x02\x00\x1c\x00\x01\x03\x00\x1d\x00\x00\xff\x09', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('ms-sql-s', '^\x04\x01\x00\x25\x00\x00\x01\x00\x00\x00\x15\x00\x06\x01\x00\x1b\x00\x01\x02\x00\x1c\x00\x01\x03\x00\x1d\x00\x00\xff\x08', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('ms-sql-s', '^\x04\x01\x00\x25\x00\x00\x01', '');
INSERT INTO services_probes ('service', 'regex', 'desc') VALUES ('firebird', '^\0\0\0\x03\0\0\0.\0\0\0.', '');
COMMIT;
