    /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import com.mysql.jdbc.Connection;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author pthak
 */
public class clg_list extends HttpServlet {
PrintWriter out;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        try{
            /* TODO output your page here. You may use following sample code. */
            String data = (readHtml("/static_clg_list_head.html"));
            out.println(data);
            
            DatabaseConnection();
        }catch(FileNotFoundException e){
            System.out.println(e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

   public String readHtml(String filename) throws FileNotFoundException {
       String absoluteDiskPath = getServletContext().getRealPath(filename);
        String result = null;
//        FileReader fr = new FileReader("/CarrerPortal/static_search_result_header.html");
        StringBuilder html = new StringBuilder();
        FileReader fr = new FileReader(absoluteDiskPath);

        try {
            BufferedReader br = new BufferedReader(fr);
            String val;
            while ((val = br.readLine()) != null) {
                html.append(val);
            }

            br.close();

            result = html.toString();
            System.out.print(result);
        } catch (IOException e) {
            System.out.print(e);
        }
        return result;
    }
   
   private void DatabaseConnection() {
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/portal", "root", "root");

            Statement stmt = con.createStatement();
            String query = "select * from college_list";
            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                int id = rs.getInt("id");
                int institute_code = rs.getInt("institute_code");
                String name = rs.getString("college_name");
                String dept = rs.getString("dept");
                String city = rs.getString("city");
                int vac_open = rs.getInt("vac_open");
                int vac_obc = rs.getInt("vac_obc");
                int vac_sc = rs.getInt("vac_sc");
                int vac_nt = rs.getInt("vac_nt");
                int vac_ews = rs.getInt("vac_ews");
                int merit_open = rs.getInt("merit_open");
                int merit_obc = rs.getInt("merit_ews");
                int merit_sc = rs.getInt("merit_obc");
                int merit_nt = rs.getInt("merit_sc");
                int merit_ewc = rs.getInt("merit_nt");
                double fees = rs.getDouble("fees");
                out.println("<tbody>\n" +
"          <tr>\n" +
"            <td data-label=\"id\">"+id+"</td>\n" +
"            <td data-label=\"institute_code\">"+institute_code+"</td>\n" +
"            <td data-label=\"name\">"+name+"</td>\n" +
"            <td data-label=\"dept%\">"+dept+"</td>\n" +
"            <td data-label=\"city%\">"+city+"</td>\n" +
"            <td data-label=\"vac_open%\">"+vac_open+"</td>\n" +
"            <td data-label=\"vac_obc%\">"+vac_obc+"</td>\n" + 
"            <td data-label=\"vac_sc\">"+vac_sc+"</td>\n" +
"            <td data-label=\"vac_nt\">"+vac_nt+"</td>\n" +
"            <td data-label=\"vac_ewc\">"+vac_ews+"</td>\n" +
"            <td data-label=\"merit_open%\">"+merit_open+"</td>\n" +
"            <td data-label=\"merit_obc%\">"+merit_obc+"</td>\n" +
"            <td data-label=\"merit_sc%\">"+merit_sc+"</td>\n" +
"            <td data-label=\"merit_nt%\">"+merit_nt+"</td>\n" +
"            <td data-label=\"merit_ewc%\">"+merit_ewc+"</td>\n" +
"            <td data-label=\"fees%\">"+fees+"</td>\n" +
"          </tr></tbody>");
            }
            out.println("</table>");
            out.println("</html></body>");
            con.close();

        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
    }


}
