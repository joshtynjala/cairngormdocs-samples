package com.adobe.cairngorm.samples.addcontact.business 
{
	import com.adobe.cairngorm.business.Responder;
	import com.adobe.cairngorm.business.ServiceLocator;
	import com.adobe.cairngorm.samples.addcontact.vo.ContactVO;
	
	import flash.utils.setTimeout;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.events.ResultEvent;
	
	public class AddContactDelegate
	{
		private var responder : Responder;
		private var service : Object;
				
		public function AddContactDelegate( responder : Responder )
		{
			//this.service = ServiceLocator.getInstance().getService( "addcontactService" );
			this.responder = responder;
		}
		
		public function addcontact( contactVO : ContactVO ): void
		{
			//var token : AsyncToken = service.addcontact( contactVO );
			//token.resultHandler = responder.onResult;
			//token.faultHandler = responder.onFault;
			
			//for demo purpose: simulate remote service result
			setTimeout( addcontactResult, 1000, contactVO );
		}
		
		private function addcontactResult( contactVO : ContactVO ): void
		{
			if( 1 )
			{
				responder.onResult( contactVO );
			}
			else
			{
				responder.onFault();
			}			
		}	
	}
}
