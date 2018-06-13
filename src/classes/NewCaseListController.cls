public class NewCaseListController{

public list<Case> getNewCases(){
    return [Select Id,CaseNumber From Case where Status='New'];
}

}