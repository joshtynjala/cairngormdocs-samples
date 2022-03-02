package com.adobe.cairngorm.samples.addcontact.model 
{
 	import com.adobe.cairngorm.model.ModelLocator;
	import mx.collections.ArrayCollection;

 	[Bindable]
	public class ModelLocator implements com.adobe.cairngorm.model.ModelLocator
	{
		private static var modelLocator : com.adobe.cairngorm.samples.addcontact.model.ModelLocator;
		
		public static function getInstance() : com.adobe.cairngorm.samples.addcontact.model.ModelLocator 
		{
			if ( modelLocator == null )
				modelLocator = new com.adobe.cairngorm.samples.addcontact.model.ModelLocator();
				
			return modelLocator;
	   }
	   
   	public function ModelLocator() 
   	{
   		if ( com.adobe.cairngorm.samples.addcontact.model.ModelLocator.modelLocator != null )
				throw new Error( "Only one ModelLocator instance should be instantiated" );	
   	}
		
		public var addcontact : AddContact = new AddContact();
		public var contacts : ArrayCollection = new ArrayCollection();
		
	}	
}

