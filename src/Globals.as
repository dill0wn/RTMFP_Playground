package
{
	public class Globals
	{
		[Embed(source="/settings.xml", mimeType="application/octet-stream")]
		protected  var _settingsXML:Class;
		
		public static var settingsXML:XML;

		public function Globals()
		{
			var thing = new _settingsXML();
			settingsXML = XML(new _settingsXML());
		}
	}
}