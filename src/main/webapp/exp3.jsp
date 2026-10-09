<%@ include file="header.jspf" %>

<h2>3. MVC Calculator (Model = CalculatorModel.java, View = this JSP, Controller = CalculatorServlet)</h2>

<%
    String result = (String) request.getAttribute("result");
    if (result == null) result = "0.0";
%>

<div style="max-width:340px; background:#f5f5f5; border-radius:8px; padding:18px; box-shadow:0 1px 3px rgba(0,0,0,0.15);">
    <p style="text-align:center; font-weight:bold; color:#333; margin:0 0 6px 0;">Created by: Krishna Gupta</p>
    <div id="exprLine" style="text-align:right; color:#777; font-size:13px; min-height:18px; margin-bottom:4px;"></div>
    <input id="display" type="text" readonly value="<%= result %>"
           style="width:100%; box-sizing:border-box; font-size:22px; font-weight:bold; text-align:right;
                  padding:10px; border:1px solid #ccc; border-radius:4px; margin-bottom:12px; background:white;">

    <div style="display:grid; grid-template-columns:repeat(4, 1fr); gap:8px;">
        <button type="button" class="btn btn-red"    onclick="clearDisplay()">C</button>
        <button type="button" class="btn btn-orange" onclick="backspace()">DEL</button>
        <button type="button" class="btn btn-blue"   onclick="append('(')">(</button>
        <button type="button" class="btn btn-blue"   onclick="append(')')">)</button>

        <button type="button" class="btn btn-purple" onclick="append('7')">7</button>
        <button type="button" class="btn btn-purple" onclick="append('8')">8</button>
        <button type="button" class="btn btn-purple" onclick="append('9')">9</button>
        <button type="button" class="btn btn-blue"   onclick="append(' / ')">/</button>

        <button type="button" class="btn btn-purple" onclick="append('4')">4</button>
        <button type="button" class="btn btn-purple" onclick="append('5')">5</button>
        <button type="button" class="btn btn-purple" onclick="append('6')">6</button>
        <button type="button" class="btn btn-blue"   onclick="append(' * ')">*</button>

        <button type="button" class="btn btn-purple" onclick="append('1')">1</button>
        <button type="button" class="btn btn-purple" onclick="append('2')">2</button>
        <button type="button" class="btn btn-purple" onclick="append('3')">3</button>
        <button type="button" class="btn btn-blue"   onclick="append(' - ')">-</button>

        <button type="button" class="btn btn-purple" onclick="append('0')">0</button>
        <button type="button" class="btn btn-purple" onclick="append('.')">.</button>
        <button type="button" class="btn btn-blue"   onclick="append(' % ')">%</button>
        <button type="button" class="btn btn-blue"   onclick="append(' + ')">+</button>
    </div>

    <button type="button" class="btn btn-green" style="width:100%; margin-top:10px; padding:12px;" onclick="submitExpression()">=</button>

    <form id="calcForm" method="post" action="${pageContext.request.contextPath}/CalculatorServlet" style="display:none;">
        <input type="hidden" id="expressionInput" name="expression" value="">
    </form>
</div>

<script>
    var display = document.getElementById('display');
    var exprLine = document.getElementById('exprLine');
    var isNewInput = true;

    // If the server just returned a fresh result, next keypress starts a new expression.
    isNewInput = true;

    function append(text) {
        if (isNewInput) {
            display.value = (text === '.' ) ? '0.' : text;
            isNewInput = false;
        } else {
            display.value += text;
        }
    }

    function clearDisplay() {
        display.value = '0.0';
        exprLine.textContent = '';
        isNewInput = true;
    }

    function backspace() {
        if (display.value.length > 0 && !isNewInput) {
            display.value = display.value.slice(0, -1);
            if (display.value === '') {
                display.value = '0.0';
                isNewInput = true;
            }
        }
    }

    function submitExpression() {
        exprLine.textContent = display.value + ' =';
        document.getElementById('expressionInput').value = display.value;
        document.getElementById('calcForm').submit();
    }
</script>

<%@ include file="footer.jspf" %>

