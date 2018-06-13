public class ParkLocator{

    public static list<String> country(string a){
    
        ParkService.ParksImplPort ps= new ParkService.ParksImplPort();
        return ps.byCountry(a);

    }

}