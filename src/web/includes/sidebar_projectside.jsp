            <%
                String project = request.getParameter("project");
                String jiraID = "";
                String forumID = "";
                if ("wildfire".equals(project)) {
                    jiraID = "10010";
                    forumID = "40";
                }
                else if ("spark".equals(project)) {
                    jiraID = "10060";
                    forumID = "49";
                }
                else if ("smack".equals(project)) {
                    jiraID = "10011";
                    forumID = "39";
                }
                else if ("xiff".equals(project)) {
                    jiraID = "10020";
                    forumID = "46";
                }
                else if ("asterisk-im".equals(project)) {
                    jiraID = "10030";
                    forumID = "47";
                }
                
            %>

            <jsp:include page="/includes/sidebar_projectlead.jsp">
                <jsp:param name="project" value="<%= project %>" />
            </jsp:include>

			<jsp:include page="/includes/sidebar_snapshot.jsp">
			    <jsp:param name="project" value="<%= project %>"/>
			</jsp:include>

            <jsp:include page="/includes/sidebar_screenshot.jsp">
                <jsp:param name="project" value="<%= project %>"/>
            </jsp:include>
			
			<jsp:include page="/includes/sidebar_forumactivity.jsp">
			    <jsp:param name="forumID" value="<%= forumID %>"/>
			</jsp:include>
			
            <jsp:include page="/includes/sidebar_issues.jsp">
			    <jsp:param name="projectID" value="<%= jiraID %>"/>
			</jsp:include>	
			
			<%@ include file="/includes/sidebar_enterprise.jspf" %>
			