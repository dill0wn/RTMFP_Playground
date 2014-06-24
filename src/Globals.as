package
{
	public class Globals
	{
		[Embed(source="/settings.xml", mimeType="application/octet-stream")]
		protected  var _settingsXML:Class;
		
		public static var settingsXML:XML;

		public function Globals()
		{
			settingsXML = new _settingsXML();
		}
	}
}