package com.emp.manage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;






public class UsersOperation {
	
/* Connection Method for Existing Database*/
	
public static Connection getConnect(){  
	Connection con=null;  
	try{  
		Class.forName("com.mysql.jdbc.Driver");  
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbemp","root","");  
	        }catch(Exception e){System.out.println(e);}  
	        return con;  
	}



/* Insert Operation */

public static int save(GetSet e){  
    int status=0;  
    try{  
        Connection con=UsersOperation.getConnect(); 
        
        PreparedStatement ps=con.prepareStatement(  
                     "insert into emp_data (name, position, salary, depart) values (?,?,?,?)");  
        
        ps.setString(1,e.getName());
        ps.setString(2,e.getPosition()); 
        ps.setFloat(3,e.getSalary()); 
        ps.setString(4,e.getDepart());
        
        status=ps.executeUpdate();  
          
        con.close();  
    }catch(Exception ex){ex.printStackTrace();}  
      
    return status;  
} 

/* View List */

public static List<GetSet> getAllRecords(){  
    List<GetSet> list=new ArrayList<GetSet>();  
      
    try{  
        Connection con=UsersOperation.getConnect();  
        PreparedStatement ps=con.prepareStatement("select * from emp_data");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
        	GetSet e=new GetSet();  
            e.setId(rs.getInt(1));  
            e.setName(rs.getString(2));  
            e.setPosition(rs.getString(3));
            e.setSalary(rs.getFloat(4));
            e.setDepart(rs.getString(5));           
            list.add(e);  
        }  
        con.close();  
    }catch(Exception e){e.printStackTrace();}  
      
    return list;  
} 

/* Edit */

public static GetSet getRecordById(int uid){  
	GetSet u=new GetSet();  
      
    try{  
        Connection con=UsersOperation.getConnect();  
        PreparedStatement ps=con.prepareStatement("select * from emp_data where id=?");  
        ps.setInt(1,uid);  
        ResultSet rs=ps.executeQuery();  
        if(rs.next()){  
            u.setId(rs.getInt(1));  
            u.setName(rs.getString(2));  
            u.setPosition(rs.getString(3));
            u.setSalary(rs.getFloat(4)); 
            u.setDepart(rs.getString(5));
        }  
        con.close();  
    }catch(Exception ex){ex.printStackTrace();}  
      
    return u;  
}  


/* Update */

public static int update(GetSet e){  
    int status=0;  
    try{  
        Connection con=UsersOperation.getConnect();  
        PreparedStatement ps=con.prepareStatement(  
                     "update emp_data set name=?, position=?, salary=?, depart=? where id=?");  
         
        ps.setString(1,e.getName());  
        ps.setString(2,e.getPosition());
        ps.setFloat(3,e.getSalary());
        ps.setString(4,e.getDepart());

        ps.setInt(5,e.getId()); 
          
        status=ps.executeUpdate();  
          
        con.close();  
    }catch(Exception ex){ex.printStackTrace();}  
      
    return status;  
}  


/* Delete */

public static int delete(int id){  
    int status=0;  
    try{  
        Connection con=UsersOperation.getConnect();  
       
        PreparedStatement ps=con.prepareStatement("delete from emp_data where id=?");  
        
        ps.setInt(1,id);
        
        status=ps.executeUpdate();  
          
        con.close(); 
        
    }catch(Exception e){e.printStackTrace();}  
    
    return status;  
}

/* Search Record */

public static List<GetSet> getRecordByName(String search){  
    List<GetSet> list=new ArrayList<GetSet>();  
      
    try{  
        Connection con=UsersOperation.getConnect();  
        PreparedStatement ps=con.prepareStatement("select * from emp_data where name Like ?");  
        ps.setString(1,'%'+search+'%');
        System.out.println(ps.toString());
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
        	GetSet e=new GetSet();  
            e.setId(rs.getInt(1));  
            e.setName(rs.getString(2));  
            e.setPosition(rs.getString(3));
            e.setSalary(rs.getFloat(4));
            e.setDepart(rs.getString(5));           
            list.add(e);  
        }  
        
        con.close();  
    }catch(Exception e){e.printStackTrace();}  
      
    return list;  
} 


}
