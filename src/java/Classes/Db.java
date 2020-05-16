package Classes;

import java.util.ArrayList;

public class Db {

    private static ArrayList<Provider> providers;

    public static ArrayList<Provider> getProviders() {

        if (providers == null) {
            providers = new ArrayList<>();
            Provider microsoft = new Provider();
            microsoft.setAttributes("Microsoft", "Microsoft Tech", "microsoft@tech.com", "Avenida Paulista nº123, Sao Paulo - SP" ,"59683569000141", "551199998888");
            providers.add(microsoft);
            Provider apple = new Provider();
            apple.setAttributes("Apple", "Apple Tech", "apple@tech.com", "Avenida Brasil nº456, Rio de Janeiro - RJ" ,"69804814000185", "551140028922");
            providers.add(apple);
        }

        return providers;
    }
    
        private static ArrayList<Customer> customers;

    public static ArrayList<Customer> getCustomers() {

        if (customers == null) {
            customers = new ArrayList<>();
            Customer thanos = new Customer();
            thanos.setAttributes("Thanos", "thanos@reidouniverso.com", "Galáxia do lado, São Paulo - SP" ,"94022047097", "155542965", "551199998888");
            customers.add(thanos);
            Customer tony = new Customer();
            tony.setAttributes("Tony Stark", "tony@stark.corp", "FATEC PG, Praia Grande - SP" ,"59147918047", "288717569", "551140028922");
            customers.add(tony);
        }

        return customers;
    }
}
