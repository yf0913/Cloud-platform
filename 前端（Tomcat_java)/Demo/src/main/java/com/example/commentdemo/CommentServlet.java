package com.example.commentdemo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;

@WebServlet("/data")
public class CommentServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String treatyname1 = request.getParameter("con1");
        String treatyname2 = request.getParameter("con2");
        System.out.println("con1"+treatyname1);
        System.out.println("con2"+treatyname2);
        try {
            //String[] arguments = new String[]{"D:/pycharm_dir/socket_test/Virtualenv/Scripts/python.exe", "D:/pycharm_dir/socket_test/user/test.py", treatyname1, treatyname2};
            //Process proc = Runtime.getRuntime().exec(arguments);
            //Process proc = Runtime.getRuntime().exec("D:/pycharm_dir/socket_test/Virtualenv/Scripts/python.exe D:/pycharm_dir/socket_test/user/test.py protocol_A_S.py protocol_A_C.py");
            String argu = "D:/pycharm_dir/socket_test/Virtualenv/Scripts/python.exe "+"D:/pycharm_dir/socket_test/user/controller.py "+treatyname1+" "+treatyname2;
            Process proc = Runtime.getRuntime().exec(argu);
            BufferedReader in = new BufferedReader(new InputStreamReader(proc.getInputStream()));
            String line = null;
            String lines = "";
            while ((line = in.readLine()) != null) {
                lines = lines + line;
            }
            //System.out.println(lines);
            in.close();
            proc.waitFor();
            String mess = "The information from server and client:";
            PrintWriter writer = response.getWriter();
            mess = mess + lines;
            //String mess = "helloworld";
            System.out.println(mess);
            writer.write(mess);
            writer.flush();
            writer.close();

        } catch (IOException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        catch (NullPointerException e) {
            e.printStackTrace();
        }
    }
}


