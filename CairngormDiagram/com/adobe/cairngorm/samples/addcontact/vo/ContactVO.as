package com.adobe.cairngorm.samples.addcontact.vo
{
	import com.adobe.cairngorm.vo.ValueObject;
	
   [Bindable]
	public class ContactVO implements ValueObject
	{
		public var fullname : String;
		public var emailaddress : String;
		public var addcontactDate : Date;
	}
	
}
