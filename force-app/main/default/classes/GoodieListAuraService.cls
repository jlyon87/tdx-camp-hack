public with sharing class GoodieListAuraService {

    @AuraEnabled(cacheable=true)
    public static String getGoodies(){
      HttpRequest req = new HttpRequest();
      req.setEndpoint('https://goodies-list.herokuapp.com/goodies');
      req.setMethod('GET');
      Http http = new Http();

      HttpResponse res = http.send(req);
      Goodie__c g = new Goodie__c();
      return res.getBody();
    }
}
