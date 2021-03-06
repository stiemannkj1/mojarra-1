<%--

    Copyright (c) 1997, 2018 Oracle and/or its affiliates. All rights reserved.

    This program and the accompanying materials are made available under the
    terms of the Eclipse Public License v. 2.0, which is available at
    http://www.eclipse.org/legal/epl-2.0.

    This Source Code may also be made available under the following Secondary
    Licenses when the conditions for such availability set forth in the
    Eclipse Public License v. 2.0 are satisfied: GNU General Public License,
    version 2 with the GNU Classpath Exception, which is available at
    https://www.gnu.org/software/classpath/license.html.

    SPDX-License-Identifier: EPL-2.0 OR GPL-2.0 WITH Classpath-exception-2.0

--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<html>
  <head><title>Simple jsp page</title></head>
  <body>
  <f:view>
      <h:messages />
      <h:form id="form">
          <h:inputText value="hello">
              <f:converter binding="#{bean.converter}"/>
          </h:inputText>
          <h:inputText value="hello2">
              <f:validator binding="#{bean.validator}"/>
          </h:inputText>
          <h:inputText value="hello3">
              <f:validator validatorId="lbv" binding="#{bean.validator2}"/>
              <f:converter converterId="lbc" binding="#{bean.converter2}"/>
          </h:inputText>

          <h:commandButton id="submit" value="#{fn:toUpperCase('click me')}"
                           type="submit"/>

      </h:form>
  </f:view>
  </body>
</html>
