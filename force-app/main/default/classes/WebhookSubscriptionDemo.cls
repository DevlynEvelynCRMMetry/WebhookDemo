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

        } catch(Exception e){

            //thisgitd

            System.debug('Exception Happened:'+e.getMessage());
        }

    }
}
