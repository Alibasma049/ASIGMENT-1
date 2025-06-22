package tracker.model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DBUtility {
    private static final String URL = "jdbc:mysql://<AWS-ENDPOINT>/<DBNAME>?useSSL=false";
    private static final String USER = "student";
    private static final String PASSWORD = "student";

    public static List<PhoneUsage> getAllUsage() {
        List<PhoneUsage> list = new ArrayList<>();
        String sql = "SELECT * FROM phone_usage";

        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                list.add(new PhoneUsage(
                        rs.getString("usage_date"),
                        rs.getString("app_name"),
                        rs.getInt("usage_minutes"),
                        rs.getString("category")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
