package com.demos;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.URLConnection;

public class Demo {

  public static void main(String[] args) throws Exception {
    URL url = new URL("https://192.168.73.43:8443/gwt-console-server/rs/form/process/BuyerA.SupplyEnquiry/Andrew.Woolstone@causeway.com/carillion/complete");
    URLConnection conn = url.openConnection();
    conn.setDoOutput(true);
    OutputStreamWriter writer = new OutputStreamWriter(conn.getOutputStream());

    writer.write("value=1&anotherValue=1");
    writer.flush();
    String line;
    BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
    while ((line = reader.readLine()) != null) {
      System.out.println(line);
    }
    writer.close();
    reader.close();

  }
}