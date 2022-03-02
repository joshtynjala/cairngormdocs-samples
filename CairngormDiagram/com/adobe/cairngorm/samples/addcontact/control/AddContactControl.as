package com.adobe.cairngorm.samples.addcontact.control 
{
	import com.adobe.cairngorm.control.FrontController;
	import com.adobe.cairngorm.samples.addcontact.commands.AddContactCommand;
	
	public class AddContactControl extends FrontController
	{
		public function AddContactControl()
		{
			addCommand( AddContactControl.EVENT_ADD_CONTACT, AddContactCommand );
		}
		
		public static const EVENT_ADD_CONTACT : String = "addcontact";
	}
}