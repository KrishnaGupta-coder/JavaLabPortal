<%@ include file="header.jspf" %>

<h2>7. RMI Calculator <span class="badge badge-desktop">VISUAL PREVIEW</span></h2>
<p style="color:#666; font-size:13px;">Demonstration of Java Remote Method Invocation (RMI) Client-Server Calculator performing remote arithmetic evaluations.</p>

<div style="max-width:400px; border-radius:8px; overflow:hidden; box-shadow:0 2px 8px rgba(0,0,0,0.15);">
    <div style="background:#3b5998; color:white; padding:12px 16px;">
        <div style="font-weight:bold; font-size:16px;">RMI Arithmetic Calculator</div>
        <div style="font-size:12px; font-style:italic; color:#dde1f5;">Java Lab Portal</div>
    </div>
    <div style="background:#ebf0f9; padding:20px;">
        <label>Enter First Number:</label>
        <input type="text" id="rmiFirst" value="0">

        <label>Enter Second Number:</label>
        <input type="text" id="rmiSecond" value="0">

        <label>Result:</label>
        <input type="text" id="rmiResult" value="0.0" readonly style="background:#d6e8d6;">

        <div style="display:grid; grid-template-columns:1fr 1fr; gap:12px; margin-top:10px;">
            <button class="btn btn-green"  onclick="rmiCalc('add')">Add</button>
            <button class="btn btn-red"    onclick="rmiCalc('subtract')">Subtract</button>
            <button class="btn btn-blue"   onclick="rmiCalc('multiply')">Multiply</button>
            <button class="btn btn-orange" onclick="rmiCalc('divide')">Divide</button>
        </div>
    </div>
</div>

<script>
    function rmiCalc(op) {
        var a = parseFloat(document.getElementById('rmiFirst').value);
        var b = parseFloat(document.getElementById('rmiSecond').value);
        var resultField = document.getElementById('rmiResult');

        if (isNaN(a) || isNaN(b)) {
            resultField.value = 'Enter valid numbers';
            return;
        }

        var result;
        switch (op) {
            case 'add': result = a + b; break;
            case 'subtract': result = a - b; break;
            case 'multiply': result = a * b; break;
            case 'divide':
                if (b === 0) { resultField.value = 'Cannot divide by zero'; return; }
                result = a / b;
                break;
        }
        resultField.value = result;
    }
</script>

<%@ include file="footer.jspf" %>


