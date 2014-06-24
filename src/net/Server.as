package net
{
	import flash.events.NetStatusEvent;
	import flash.net.NetConnection;

//	Your (codename) Cirrus developer key is: 
//	[REDACTED] Now in settings.xml

//	To connect to the Cirrus service, open an RTMFP NetConnection to: 
//	[REDACTED] Now in settings.xml
	public class Server
	{
		protected var serverConnection:NetConnection;
		
		public function get nearID():String { return serverConnection.nearID; }

		public function Server()
		{
			serverConnection = new NetConnection();
			serverConnection.addEventListener(NetStatusEvent.NET_STATUS, netConnectionHandler);
			serverConnection.connect(Globals.settingsXML.cirrus.url, Globals.settingsXML.cirrus.key);
		}

        public function netConnectionHandler(e:NetStatusEvent):void
        {
            trace("Lel: " + e);
			
			trace("key: " + serverConnection.nearID);
			trace("far: " + serverConnection.farID);
        }
	}
}