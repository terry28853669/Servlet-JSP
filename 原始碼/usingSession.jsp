<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<HTML>
<HEAD>
    <TITLE>Ū��session��</TITLE>
</HEAD>
<BODY>
      <% 
          Object id=session.getAttribute("idvalue") ;       
          Object sex=session.getAttribute("sex") ;
          Object hobby=session.getAttribute("hobby") ;
          if(id!=null ){
          out.println("�m�W�G"+id.toString()) ; 
          out.println("<br>") ; 
          out.println("�ʧO�G"+sex.toString()) ;     
          out.println("<br>") ; 
          out.println("����G"+hobby.toString()) ;    
          }else{
              out.println("�L�]�wseeion��� !!") ; 
          }

      %>
</BODY>
</HTML>

