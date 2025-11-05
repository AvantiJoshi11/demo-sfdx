public with sharing class JustApex {
    @AuraEnabled(cacheable=true)
   public static List<Account> getAccounts() {
       // Simple SOQL query to get Id and Name of Accounts
       List<Account> accountList = [SELECT Id, Name FROM Account LIMIT 10];
       return accountList;
   }
}