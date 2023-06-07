public  class UpdateAccountTotalCaseCount {
    @InvocableMethod

    public static void UpdateAccountTotalCaseCount(list<id> accountId) {
        List<AggregateResult> accountAgr = [select count(id), acountId from case where accountId in:listAccountId group by accountId ];
        list<account> updateAccounts = new list<account>();
        for(AggregateResult agr : caseAgr){
         
        }
    }
}