/**
 * @description       : 
 * @author            : Denzyl Evelyn
 * @group             : 
 * @last modified on  : 01-14-2022
 * @last modified by  : Denzyl Evelyn
**/
@RestResource(urlMapping='/api/Webhooks/pushDetailsDemo/*')
global with sharing class WebhookSubscriptionDemo {
    @HttpPost
    global static void handlenotification() {

        try{

            RestRequest request = RestContext.request;
            RestResponse response = RestContext.response;
            //fetch the body of the request
            //get Hashvalue
            String hashvalue = request.headers.get('X-Hub-Signature-256');
            //debug the Hashvalue
            System.debug('hashvalue: '+hashvalue);
            Blob bB = request.requestBody;
            System.debug(bB.toString());

            JSONParser parser = JSON.createParser(request.requestBody.toString());
            while(parser.nextToken()!= null){
            if (parser.getText()=='pusher'){
                System.debug('YEAHBOI');
            }

            else{
                System.debug('Oh no');


            }
        }
        } catch(Exception e){

            //work.s work
        

            System.debug('Exception Happened:'+e.getMessage());
        }

    }
}
