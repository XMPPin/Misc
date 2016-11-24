admins = { "", "" }

use_libevent = true 
plugins_path = { "/usr/share/prosody-modules/" }

modules_enabled = {
	"announce";
	"roster";
	"saslauth";
	"tls";
	"dialback";
	"disco";
	"private";
	"vcard";
	"version";
	"uptime";
	"time";
	"ping";
	"pep";
	"admin_adhoc";
	"admin_web";
	"register_web";
	"onions";
	"motd";
	"welcome";
	"lastactivity";
	"register";
	"blocklist";
}
modules_disabled = {
}

motd_text = [[ Welcome, please remember we take privacy serious, the down side to that is it can get expensive so please consider donating, https://XMPP.in/donate ]]
motd_jid = [[ admin@xmpp.in ]] 
welcome_message = "Thank You $username for registering with us here at $host. Any questions or concerns add our staff at support@xmpp.in, also please consider donating, https://XMPP.in/donate"


allow_registration = true
ssl = {
	key = "/etc/prosody/certs/xmpp.key";
	certificate = "/etc/prosody/certs/xmpp.crt";
}

c2s_require_encryption = true
s2s_secure_path = false

pidfile = "/var/run/prosody/prosody.pid"

authentication = "internal_hashed"

storage = sql 
sql = {
	driver = "MySQL",
	database = "",
	username = "",
	password = "",
	host = "",
}

log = {
	info = "";
	error = "";
	"*syslog";
}

VirtualHost "xmpp.in"
	enabled = true