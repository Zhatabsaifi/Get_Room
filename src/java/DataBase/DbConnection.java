package DataBase;
import com.mysql.jdbc.*;
import java.io.InputStream;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
public class DbConnection {
    private Connection con;
    private PreparedStatement forgetPass,bookingDetail,deleteBooking,roomDetail,hotelDetail,booking,updateRoomNo,availablerooms,addBooking,register,login,update,getId,getPassword,setPassword,contact,searchHotel,facility,getHotelId,searchRoom;
    private Statement st;
    public Statement getStatement() 
    {
        return st;
    }
    public DbConnection() throws Exception{
        Class.forName("com.mysql.jdbc.Driver");
        con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/get_room", "root", "Zhatab");
        register = (PreparedStatement) con.prepareStatement("insert into user (name,email,phone,password,photo)values(?,?,?,?,?)");
        login = (PreparedStatement) con.prepareStatement("select * from user where email = ? and password = ?");
        update = (PreparedStatement) con.prepareStatement("update user set name = ?,email=?,phone=? where uid = ?");
        getId = (PreparedStatement) con.prepareStatement("select uid from user where email=?");
        getPassword = (PreparedStatement) con.prepareStatement("select password from user where email=?");
        setPassword = (PreparedStatement) con.prepareStatement("update user set password = ? where email=?");
        contact = (PreparedStatement) con.prepareStatement("insert into contact values(?,?,?,?)");
        searchHotel = (PreparedStatement) con.prepareStatement("select * from hotel where city like ? ");
        facility = (PreparedStatement) con.prepareStatement("select * from hotel where facilities like ? and city = ?");
        getHotelId = (PreparedStatement) con.prepareStatement("select * from hotel where name=? and city=?");
        searchRoom = (PreparedStatement) con.prepareStatement("select * from Room where hid = ? and availablerooms>0");
        addBooking = (PreparedStatement) con.prepareStatement("insert into booking(hid,rid,cid,checkindate,checkoutdate,noofrooms,noofguests,totalcharges,status) values(?,?,?,?,?,?,?,?,?)");
        updateRoomNo = (PreparedStatement) con.prepareStatement("update room set availablerooms=? where rid=?");
        availablerooms= (PreparedStatement) con.prepareStatement("select * from room where rid=?");
        booking = (PreparedStatement) con.prepareStatement("select * from booking where cid = ? ORDER BY checkindate ASC,checkoutdate ASC");
        hotelDetail = (PreparedStatement) con.prepareStatement("select * from hotel where hid =?");
        roomDetail = (PreparedStatement) con.prepareStatement("select * from room where rid = ?");
        deleteBooking = (PreparedStatement) con.prepareStatement("DELETE  from booking where bid = ?");
        bookingDetail = (PreparedStatement) con.prepareStatement("select * from booking where bid = ?");
        forgetPass = (PreparedStatement) con.prepareStatement("select password from user where email = ?");
    }
    public String forgetPass(String e) throws SQLException{
        forgetPass.setString(1, e);
        ResultSet rs=forgetPass.executeQuery();
        if(rs.next()){
            return rs.getString("password");
        }
        return null;
    }
     public ResultSet bookingDetail(int bid) throws SQLException{
        bookingDetail.setInt(1, bid);
        ResultSet rs = bookingDetail.executeQuery();
        return rs;
    } 
    public String deleteBooking(int bid) throws SQLException{
        deleteBooking.setInt(1, bid);
        int x=deleteBooking.executeUpdate();
        if(x != 0)return "Yes";
        else return "No";
    }
    public ResultSet roomDetail(int rid) throws SQLException{
        roomDetail.setInt(1, rid);
        ResultSet rs = roomDetail.executeQuery();
        return rs;
    } 
     public ResultSet hotelDetail(int hid) throws SQLException{
        hotelDetail.setInt(1, hid);
        ResultSet rs = hotelDetail.executeQuery();
        return rs;
    }
    public ResultSet booking(int uid) throws SQLException{
        booking.setInt(1, uid);
        ResultSet rs = booking.executeQuery();
        return rs;
    }
    public String updateRoomNo(int ar,int rid) throws SQLException{
        updateRoomNo.setInt(1,ar);
        updateRoomNo.setInt(2,rid);
        int x = updateRoomNo.executeUpdate();
        if(x != 0){
            return "Done";
        }else{
            return "Failed";
        }
    }
    public int availablerooms(int r) throws SQLException{
        availablerooms.setInt(1, r);
        ResultSet rs= availablerooms.executeQuery();
        if(rs.next()){
            return rs.getInt("availablerooms");
        }else return 0;
    }
    public String addBooking(int hid,int rid,int cid,java.sql.Date in , java.sql.Date out,int nor,int nog,int to){
         try
        {        
            addBooking.setInt(1, hid);
            addBooking.setInt(2, rid);
            addBooking.setInt(3, cid);
            addBooking.setDate(4, in);
            addBooking.setDate(5, out);
            addBooking.setInt(6, nor);
            addBooking.setInt(7, nog);
            addBooking.setInt(8, to);
            addBooking.setString(9, "Pending");
            int x=addBooking.executeUpdate();
            if(x==1)
            return "Done";
            else 
            return "Error";
        }
        catch(Exception ex)
        {
            return "Exception";
        }
    }
    public java.util.HashSet searchRoom(int x) throws SQLException{
        searchRoom.setInt(1, x);
        java.util.HashSet allRoomDetails=new java.util.HashSet();
        ResultSet r = searchRoom.executeQuery();
        while(r.next()){
             java.util.HashMap RoomDetails=new java.util.HashMap();
                RoomDetails.put("rid",r.getString("rid"));
                RoomDetails.put("hid",r.getString("hid"));
                RoomDetails.put("rt",r.getString("type"));
                RoomDetails.put("totalrooms",r.getString("totalrooms"));
                RoomDetails.put("availablerooms",r.getString("availablerooms"));
                RoomDetails.put("facilities",r.getString("facilities"));
                RoomDetails.put("priceperroomperday",r.getString("priceperroomperday"));
                RoomDetails.put("Breakfastprice",r.getString("Breakfastprice"));
                allRoomDetails.add(RoomDetails);
        }
        return allRoomDetails;
    }
    public int getHotelId(String n,String c) throws SQLException{
        getHotelId.setString(1,n);
        getHotelId.setString(2, c);
        ResultSet rs = getHotelId.executeQuery();
        if(rs.next()){
            return rs.getInt("hid");
        }else return 0;
    }
    public java.util.HashSet<java.util.HashMap> facility(String f,String c) throws SQLException{
        facility.setString(1,"%"+f+"%");
        facility.setString(2,c);
       ResultSet rs =  searchHotel.executeQuery();
       java.util.HashSet<java.util.HashMap> detail = new java.util.HashSet<java.util.HashMap>();
       while(rs.next()){
           java.util.HashMap hs = new java.util.HashMap();
           hs.put("hid", rs.getString("hid"));
           hs.put("hname",rs.getString("name"));
           hs.put("price",rs.getString("pricestartingfrom"));
           hs.put("facilities", rs.getString("facilities"));
           detail.add(hs);
       }
       return detail;
    }
    public java.util.HashSet<java.util.HashMap> searchHotel(String c) throws SQLException{
        searchHotel.setString(1,"%"+c+"%");
       ResultSet rs =  searchHotel.executeQuery();
       java.util.HashSet<java.util.HashMap> detail = new java.util.HashSet<java.util.HashMap>();
       while(rs.next()){
           java.util.HashMap hs = new java.util.HashMap();
           hs.put("hid", rs.getString("hid"));
           hs.put("hname",rs.getString("name"));
           hs.put("price",rs.getString("pricestartingfrom"));
           hs.put("facilities", rs.getString("facilities"));
           detail.add(hs);
       }
       return detail;
    }
    public String contact(String n,String e,String s,String m) throws SQLException{
        contact.setString(1,n);
        contact.setString(2,e);
        contact.setString(3, s);
        contact.setString(4, m);
        int x= contact.executeUpdate();
        if(x != 0){
            return "Done";
        }else return "Fail";
    }
    public String setPassword(String e,String p) throws SQLException{
        setPassword.setString(1, p);
        setPassword.setString(2, e);
        int x = setPassword.executeUpdate();
        if(x != 0) return "Done";
        else return "Fail";
    }
    public String getPassword(String e) throws SQLException{
        getPassword.setString(1, e);
        ResultSet rs = getPassword.executeQuery();
        if(rs.next()){
            return rs.getString("password");
        }
        else return null;
    }
    public int getId(String e) throws SQLException{
        getId.setString(1, e);
        ResultSet rs = getId.executeQuery();
        if(rs.next()) return rs.getInt("uid");
        else return 0;
    }
    public String register(HashMap userdetail) throws SQLException{
       try{
            register.setString(1, (String) userdetail.get("name"));
            register.setString(2, (String) userdetail.get("email"));
            register.setString(3, (String) userdetail.get("phone"));
            register.setString(4, (String) userdetail.get("pass"));
            register.setBinaryStream(5, (InputStream) userdetail.get("photo"));
            int x = register.executeUpdate();
            if(x != 0 ){
                return"Done";
            }else return "Failed";
       }catch(java.sql.SQLIntegrityConstraintViolationException ex){
           return "Already";
       }
    }
    public ResultSet login(String e,String p) throws SQLException{
        login.setString(1, e);
        login.setString(2, p);
        ResultSet rs = login.executeQuery();
        return rs;
    }
    public String update(String n,String e,String p,String u) throws SQLException{
        update.setString(1, n);
        update.setString(2, e);
        update.setString(3, p);
        update.setString(4, u);
        int x=update.executeUpdate();
        if(x != 0 ) return "Done";
        else return "Fail";
    }
}
