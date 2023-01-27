package dao;

import java.net.URI;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.Stock;


public class StockDAO {
	private static Connection getConnection() throws URISyntaxException, SQLException {
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	    URI dbUri = new URI(System.getenv("DATABASE_URL"));

	    String username = dbUri.getUserInfo().split(":")[0];
	    String password = dbUri.getUserInfo().split(":")[1];
	    String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();

	    return DriverManager.getConnection(dbUrl, username, password);
	}
	
	public static List<Stock> All() {
		
		// 返却用変数
		List<Stock> result = new ArrayList<>();

		String sql = "SELECT * FROM teambihin";
		
		try (
				Connection con =getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
				){
			try (ResultSet rs = pstmt.executeQuery()){
				while(rs.next()) {
					String name = rs.getString("name");
					int num = rs.getInt("num");

					Stock employee = new Stock(name, num);
					
					result.add(employee);
				}
			}
		} catch (SQLException | URISyntaxException e) {
			e.printStackTrace();
		}

		// Listを返却する。0件の場合は空のListが返却される。
		return result;
	}
	
	public static int Registersuccess(Stock bihin) {
	
		
		String sql = "INSERT INTO teambihin VALUES(default, ?, ?)";

		// return用の変数
		int result = 0;
		
		try (
				Connection con = getConnection();	// DB接続
				PreparedStatement pstmt = con.prepareStatement(sql);			// 構文解析
				){
			pstmt.setString(1, bihin.getName());
			pstmt.setInt(2, bihin.getNum());
			
			result = pstmt.executeUpdate();
		} catch (SQLException | URISyntaxException e) {
			e.printStackTrace();
		} finally {
			System.out.println(result + "件更新しました。");
		}
		return result;
	}
}
