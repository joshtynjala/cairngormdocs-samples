package com.adobe.cairngorm.samples.addcontact.model
{
	import com.adobe.cairngorm.samples.addcontact.vo.ContactVO;
	
	public class AddContact
	{
		[Bindable]
		public var contactVO : ContactVO;
		[Bindable]
		public var statusMessage : String;
		[Bindable]
		public var isPending : Boolean;

	}
}