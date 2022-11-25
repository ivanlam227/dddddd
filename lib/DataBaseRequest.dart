///Запросы к БД
abstract class DataBaseRequest {
  static String deleteTable(String table) => 'DROP TABLE $table';
static const String tableRole = 'Role';
 static const String tableUsers = 'Users';
static const String tableProfile='Profile';
static const String tableCountry='Country';
static const String tableProizvod='Proizvod';
static const String tableSubcategories='Subcategories';
static const String tableCategories='Subcategories';
static const String tableCateSubcate='CateSubcate';
static const String tableProduct='Product';

 static const List<String> tableList =[tableRole,
  tableUsers, 
  tableProfile,
   tableCountry, 
   tableProizvod,
    tableSubcategories, 
    tableCategories,
     tableCateSubcate,
      tableProduct];
 static const List<String> tableCreateList = [_createTableRole,
_createTableUsers, _createTableProfile, _createTableCountry, _createTableProizvod, _createTableSubcategories, _createTableCategories, _createTableCateSubcate, _createTableProduct];
static const String _createTableRole =
'CREATE TABLE "$tableRole" ("id" INTEGER,"role" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';


static const String _createTableUsers =

'CREATE TABLE "$tableUsers" ("id" INTEGER,"login" TEXT NOT NULL UNIQUE,"password" TEXT NOT NULL,"id_role" INTEGER,FOREIGN KEY("id_role") REFERENCES "Role"("id"),PRIMARY KEY("id"))';
 
 static const String _createTableProfile =

'CREATE TABLE "$tableProfile" ("id" INTEGER,"Surname" TEXT NOT NULL,"name" TEXT NOT NULL,"middle_name" TEXT, "date_birth" DATE NOT NULL, "male" TEXT NOT NULL, "id_users" INTEGER,FOREIGN KEY("id_users") REFERENCES "Users"("id") ';


  static const String _createTableCountry =

'CREATE TABLE "$tableCountry" ("id" INTEGER,"country" TEXT NOT NULL UNIQUE,PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableProizvod =

'CREATE TABLE "$tableProizvod" ("id" INTEGER,"proizvod" TEXT NOT NULL UNIQUE,"id_country" INTEGER,FOREIGN KEY("id_country") REFERENCES "Country"("id"),PRIMARY KEY("id"))';

static const String _createTableSubcategories =
'CREATE TABLE "$tableSubcategories" ("id" INTEGER,"subcategories" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

static const String _createTableCategories =
'CREATE TABLE "$tableCategories" ("id" INTEGER,"categories" TEXT NOT NULL UNIQUE,PRIMARY KEY("id"))';

 
 static const String _createTableCateSubcate =
'CREATE TABLE "$tableCateSubcate" ("id" INTEGER,"id_categories" INTEGER, "id_subcategories" INTEGER, FOREIGN KEY("id_categories") REFERENCES "Categories"("id"),FOREIGN KEY("id_subcategories") REFERENCES "Subcategories"("id"),PRIMARY KEY("id"))';

  static const String _createTableDelivery = "create table Delivery("
      "id int primary key not null,"
      "id_customer_order int,"
      "id_address int,"
      "date_at date,"
      "foreign key (id_customer_order) references CustomerOrder(id),"
      "foreign key (id_address) references Address(id)"
      ");";

static const String _createTableProduct =
'CREATE TABLE "$tableProduct" ("id" INTEGER,"product" TEXT NOT NULL UNIQUE,"cent" DOUBLE NOT NULL,"description" TEXT NOT NULL,"id_proizvod" INTEGER,"id_CateSubcate" INTEGER, FOREIGN KEY("id_proizvod") REFERENCES "Proizvod"("id"),FOREIGN KEY("id_CateSubcate") REFERENCES "CateSubcate"("id"),PRIMARY KEY("id"))';

}
