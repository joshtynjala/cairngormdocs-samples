package com.adobe.cairngorm.samples.addcontact.commands 
{
	import mx.rpc.events.ResultEvent;
	import com.adobe.cairngorm.business.Responder;
	import com.adobe.cairngorm.commands.Command;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.samples.addcontact.business.AddContactDelegate;
	import com.adobe.cairngorm.samples.addcontact.control.AddContactEvent;
	import com.adobe.cairngorm.samples.addcontact.model.ModelLocator;
	import com.adobe.cairngorm.samples.addcontact.vo.ContactVO;
	
	public class AddContactCommand implements Command, Responder
	{
		private var model : ModelLocator = ModelLocator.getInstance();

		public function execute( event : CairngormEvent ) : void
		{
			model.addcontact.isPending = true;
			
			var delegate : AddContactDelegate = new AddContactDelegate( this );   
			var addcontactEvent : AddContactEvent = AddContactEvent( event );  
			delegate.addcontact( addcontactEvent.contactVO );	      
		}
		   
		public function onResult( event : * = null ) : void
		{			

			model.addcontact.contactVO = ContactVO( event );
			model.addcontact.isPending = false;
			
			//Simplify - Used an array of strings instead of ContactVO's
			model.contacts.addItem(ContactVO(event).fullname+" "+ContactVO(event).emailaddress);
			
		}
				
		public function onFault( event : * = null ) : void
		{
			model.addcontact.statusMessage = "Could not send contact information to the server.";
			model.addcontact.isPending = false;
		}
	}
}