package com.example.commentdemo;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

@WebServlet("/data3")
public class Fileupload extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Fileway1 = request.getParameter("way1");
        String Fileway2 = request.getParameter("way2");
        System.out.println("Fileway1:");
        System.out.println(Fileway1);
        System.out.println("Fileway2:");
        System.out.println(Fileway2);
        try {
            String[] arguments = new String[]{"D:\\pycharm_dir\\socket_test\\Virtualenv\\Scripts\\python.exe", "D:\\pycharm_dir\\socket_test\\user\\file_upload.py",Fileway1,Fileway2};
            Process proc = Runtime.getRuntime().exec(arguments);
            BufferedReader in = new BufferedReader(new InputStreamReader(proc.getInputStream()));
            String line = null;
            while ((line = in.readLine()) != null) {
                System.out.println(line);
            }
            in.close();
            proc.waitFor();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
