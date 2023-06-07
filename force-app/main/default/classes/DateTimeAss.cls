public  class DateTimeAss {
    public void diffOffDate() {
        date varTom = date.newInstance(2023, 5, 8);
        date varToday =date.newInstance(2023, 5, 7);
        integer diff =varToday.daysBetween(varTom);
        system.debug('difefrence ' + diff);
    }

    public void TimeCheck(){
        Datetime varTo= Datetime.newInstance(2023, 5, 8, 7, 0,0); 
        system.debug('tomorrow '+ varTo);
        Datetime var10days =Datetime.newInstanceGmt(2023, 15, 9, 0, 0, 0);
        system.debug('10 days later ' + var10days);
        Long lVar =12335478L;
        system.debug(lvar);
        Datetime add7 = varTo.addDays(7);
        system.debug( '7 gun ekle '+ add7);

    }
}