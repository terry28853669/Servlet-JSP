<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<HTML>
<HEAD>
    <TITLE>讀取session值</TITLE>
</HEAD>
<BODY>
      <% 
          Object id=session.getAttribute("idvalue") ;       
          Object sex=session.getAttribute("sex") ;
          Object hobby=session.getAttribute("hobby") ;
          if(id!=null ){
          out.println("姓名："+id.toString()) ; 
          out.println("<br>") ; 
          out.println("性別："+sex.toString()) ;     
          out.println("<br>") ; 
          out.println("興趣："+hobby.toString()) ;    
          }else{
              out.println("無設定seeion資料 !!") ; 
          }

      %>
</BODY>
</HTML>

