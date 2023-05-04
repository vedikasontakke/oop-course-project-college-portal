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
import static java.lang.String.format;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DecimalFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author pthak
 */
public class college_result extends HttpServlet {

    PrintWriter out;
    String name, merit_no, branch, caste, vac_caste;
    private static final DecimalFormat df = new DecimalFormat("0.00");

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     *
     * 
 * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */

            name = request.getParameter("name");
            merit_no = request.getParameter("merit_no");
            branch = request.getParameter("branch");
            caste = request.getParameter("caste");

            vac_caste = ("vac_" + caste.replace("merit_", "")).toLowerCase();
//          System.out
            String data = (readHtml("/static_search_result_head.html"));
            out.println(data);
            out.print("<div style='display:flex; flex-direction:column; line-height:0.3'>"
                    + "<h5 style='float:left'>Name: " + name + "</h5><br/>"
                    + "<h5 style='float:left'>Merit number: " + merit_no + "</h5><br/>"
                    + "<h5 style='float:left'>Branch: " + branch + "</h5><br/>"
                    + "<h5 style='float:left'>Caste: " + caste.replace("merit_", "") + "</h5><br/>"
                    + "</div>");

            DatabaseConnection();

        } catch (Exception e) {
            System.out.print(e);
        }
    }

    public String readHtml(String filename) throws FileNotFoundException {
        String result = null;
        String absoluteDiskPath = getServletContext().getRealPath(filename);
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
        } catch (Exception e) {
            System.out.print(e);
        }
        return result;
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

    private void DatabaseConnection() {
        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/portal", "root", "root");

            Statement stmt = con.createStatement();
            String query = "select * from college_list where dept=\'" + branch + "\'";
//            out.print(query);
            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                int id = rs.getInt("id");
                int institute_code = rs.getInt("institute_code");
                String name = rs.getString("college_name");
                String city = rs.getString("city");
                int vacancy = rs.getInt(vac_caste);
                int merit = rs.getInt(caste);

                double res = merit - Integer.parseInt(merit_no);
                res = (res / merit) * 100;

                if (res < 0) {
                    res = 0;
                }
                double fees = rs.getInt("fees");
                out.println("<tbody><tr>\n" + "    <td data-label=\"S.No\">" + id + "</td>\n"
                        + "            <td data-label=\"i_code\">" + institute_code + "</td>\n"
                        + "            <td data-label=\"name\">" + name + "</td>\n"
                        + "            <td data-label=\"city%\">" + city + "</td>\n"
                        + "            <td data-label=\"vacancy%\">" + vacancy + "</td>\n"
                        + "            <td data-label=\"merit%\">" + merit + "</td>\n"
                        + "            <td data-label=\"fees%\">" + fees + "</td>\n"
                        + "            <td data-label=\"Staus\">\n"
                        + "                <progress id=\"file\" value=\"" + res + "\" max=\"100\"></progress>\n"
                        + "                <label for=\"file\">" + df.format(res) + " %</label>\n"
                        + "            </td>\n"
                        + "          </tr></tbody>");

            }
            out.println("</table>");
            out.println("</html></body>");
            con.close();

        } catch (Exception e) {
            System.out.println(e);
        }
    }

}
