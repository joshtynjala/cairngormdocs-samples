package com.adobe.cairngorm.samples.addcontact.control 
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.samples.addcontact.vo.ContactVO;
	
	/**
	 * The Cairngorm event broadcast when the user attempts to log in
	 */
	public class AddContactEvent extends CairngormEvent 
	{
		/**
		 * The addcontact details for the user
		 */
		public var contactVO : ContactVO;
				
		/**
		 * The constructor, taking a ContactVO
		 */
		public function AddContactEvent( contactVO : ContactVO ) 
		{
			super( AddContactControl.EVENT_ADD_CONTACT );
			this.contactVO = contactVO;
		}
	}	
}