package example;

public class Main {

  public static void main(String[] args) {
    final String SCHEMA_PATH = "animal.public.";

    final String connectionStr = "jdbc:postgresql://db:26257/animal?sslmode=disable";

    example.chain.ILink obj = new example.chain.Driver();

    if (obj.hasResource("org.postgresql.Driver", "root", "", connectionStr)){
      final String[]  tableNames = new String[]{
        SCHEMA_PATH + "dog",
        SCHEMA_PATH + "breedLookup",
        SCHEMA_PATH + "colorLookup",
        SCHEMA_PATH + "dog_expanded",
        SCHEMA_PATH + "breed_count"
      };
      example.db.print.output.IOutput output = new example.db.print.output.ToConsole();
      for ( String tbl : tableNames)
        example.db.DBQuery.query("root", "", connectionStr, tbl, output);
    }
  }
}
