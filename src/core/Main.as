package core
{
	import net.Client;
	import net.Server;

	public class Main
	{
		public var globals:Globals;
		public var server:Server;
		public var client:Client;

		public function Main()
		{
			globals = new Globals();
			
			server = new Server();
			client = new Client();
			
			Globals.settingsXML;
		}
	}
}