<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    <%@ include file="Dataconnection.jsp" %>
    
<% 

import java.io.FileInputStream;
import java.io.IOException;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class ExcelReader {
    public static void main(String[] args) {
        String filePath = "C:/Users/Srikanth/Downloads"; // Replace with the path to your Excel file
        
        
        //C:\Users\Srikanth\Downloads srikanth XL sheet name
        try (FileInputStream fis = new FileInputStream(filePath);
             Workbook workbook = new XSSFWorkbook(fis)) {

            Sheet sheet = workbook.getSheetAt(0); // Assuming you want to read the first sheet (index 0)

            // Iterate over rows
            for (Row row : sheet) {
                // Iterate over cells
                for (Cell cell : row) {
                    CellType cellType = cell.getCellType();
                    if (cellType == CellType.STRING) {
                        System.out.print(cell.getStringCellValue() + "\t");
                    } else if (cellType == CellType.NUMERIC) {
                        System.out.print(cell.getNumericCellValue() + "\t");
                    } else if (cellType == CellType.BOOLEAN) {
                        System.out.print(cell.getBooleanCellValue() + "\t");
                    } else if (cellType == CellType.BLANK) {
                        System.out.print("\t");
                    }
                }
                System.out.println();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
%>


</body>
</html>