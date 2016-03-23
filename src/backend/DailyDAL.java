package backend;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DailyDAL {
	private ArrayList<String> _titleList;
	private ArrayList<String> _contentList;
	private String _user;
	private Object[] _dateParams;
	private Statement executor;

	public DailyDAL(ArrayList<String> _titleList, ArrayList<String> _contentList, String _user, Object[] _dateParams) {
		super();
		this._titleList = _titleList;
		this._contentList = _contentList;
		this._user = _user;
		this._dateParams = _dateParams;
		this.executor = new MySqlConnect().Connect();
	}

	public String SaveOrUpdate() {
		if (executor != null) {
			int len = this._titleList.size();
			String title, content, query;
			@SuppressWarnings("deprecation")
			Date date = new Date((int) _dateParams[0] - 1900, (int) _dateParams[1] - 1, (int) _dateParams[2]);
			try {
				query = "delete from user_entries where user_id='" + this._user + "'" + " and date='" + date + "'";
				executor.executeUpdate(query);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			for (int i = 0; i < len; i++) {
				title = _titleList.get(i);
				content = _contentList.get(i);
				try {
					query = "insert into user_entries(user_id, date, title, description) values ('" + this._user + "','"
							+ date + "','" + title + "','" + content + "')";
					executor.executeUpdate(query);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

		return "Connection refused to the database";
	}

	public ArrayList<String> GetTitles() {
		ArrayList<String> result = new ArrayList<String>();
		@SuppressWarnings("deprecation")
		Date date = new Date((int) _dateParams[0] - 1900, (int) _dateParams[1] - 1, (int) _dateParams[2]);

		String query = "select title from user_entries where user_id = '" + _user + "' and date = '" + date + "'";

		if (executor != null) {
			try {
				ResultSet set = executor.executeQuery(query);
				while (set.next()) {
					result.add(set.getString("title"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return result;
		}

		return null;
	}

	public ArrayList<String> GetDescriptions() {
		ArrayList<String> result = new ArrayList<String>();
		@SuppressWarnings("deprecation")
		Date date = new Date((int) _dateParams[0] - 1900, (int) _dateParams[1] - 1, (int) _dateParams[2]);

		String query = "select description from user_entries where user_id = '" + _user + "' and date = '" + date + "'";

		if (executor != null) {
			try {
				ResultSet set = executor.executeQuery(query);
				while (set.next()) {
					result.add(set.getString("description"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return result;
		}

		return null;
	}
}
