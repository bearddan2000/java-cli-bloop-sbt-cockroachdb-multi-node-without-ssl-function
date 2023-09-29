package example.chain;

public interface ILink {
  boolean hasResource(final String driverStr, final String connectionStr);

  // NEW
  boolean hasResource(final String driverStr, final String usernam, final String password, final String connectionStr);
}
