<%@ include file="header.jspf" %>

<h2>3. MVC Calculator (Experiment 3)</h2>
<p style="color:#666; font-size:13px;">
    3-Tier MVC Architecture Calculator separating Model (<code>CalculatorModel.java</code>), View (JSP), and Controller (<code>CalculatorServlet.java</code>).
</p>

<%
    String result = (String) request.getAttribute("result");
    if (result == null) result = "0.0";
%>

<div style="max-width:340px; background:#f5f5f5; border-radius:8px; padding:18px; box-shadow:0 3px 12px rgba(0,0,0,0.15); border:1px solid #ccc;">
    
    <div id="exprLine" style="text-align:right; color:#777; font-size:13px; min-height:18px; margin-bottom:4px;"></div>
    <input id="display" type="text" readonly value="<%= result %>"
           style="width:100%; box-sizing:border-box; font-size:22px; font-weight:bold; text-align:right;
                  padding:10px; border:1px solid #ccc; border-radius:4px; margin-bottom:12px; background:white;">

    <div style="display:grid; grid-template-columns:repeat(4, 1fr); gap:8px;">
        <button type="button" class="btn" style="background:#e0e0e0; color:#333;" onclick="press('(')">(</button>
        <button type="button" class="btn" style="background:#e0e0e0; color:#333;" onclick="press(')')">)</button>
        <button type="button" class="btn btn-red"   onclick="backspace()">DEL</button>
        <button type="button" class="btn btn-orange" onclick="clearAll()">C</button>

        <button type="button" class="btn" style="background:white; color:#333; border:1px solid #ccc;" onclick="press('7')">7</button>
        <button type="button" class="btn" style="background:white; color:#333; border:1px solid #ccc;" onclick="press('8')">8</button>
        <button type="button" class="btn" style="background:white; color:#333; border:1px solid #ccc;" onclick="press('9')">9</button>
        <button type="button" class="btn btn-purple" onclick="press('/')">/</button>

        <button type="button" class="btn" style="background:white; color:#333; border:1px solid #ccc;" onclick="press('4')">4</button>
        <button type="button" class="btn" style="background:white; color:#333; border:1px solid #ccc;" onclick="press('5')">5</button>
        <button type="button" class="btn" style="background:white; color:#333; border:1px solid #ccc;" onclick="press('6')">6</button>
        <button type="button" class="btn btn-purple" onclick="press('*')">*</button>

        <button type="button" class="btn" style="background:white; color:#333; border:1px solid #ccc;" onclick="press('1')">1</button>
        <button type="button" class="btn" style="background:white; color:#333; border:1px solid #ccc;" onclick="press('2')">2</button>
        <button type="button" class="btn" style="background:white; color:#333; border:1px solid #ccc;" onclick="press('3')">3</button>
        <button type="button" class="btn btn-purple" onclick="press('-')">-</button>

        <button type="button" class="btn" style="background:white; color:#333; border:1px solid #ccc;" onclick="press('0')">0</button>
        <button type="button" class="btn" style="background:white; color:#333; border:1px solid #ccc;" onclick="press('.')">.</button>
        <button type="button" class="btn btn-green"  onclick="evaluateClient()">=</button>
        <button type="button" class="btn btn-purple" onclick="press('+')">+</button>
    </div>

    <form id="serverForm" method="post" action="${pageContext.request.contextPath}/CalculatorServlet" style="margin-top:12px;">
        <input type="hidden" name="expression" id="exprHidden">
        <button type="submit" class="btn btn-blue" style="width:100%; font-size:12px; padding:6px;">Evaluate on Java Server (MVC Controller)</button>
    </form>
</div>

<details style="background:#f4f6f8; border:1px solid #ddd; border-radius:6px; padding:12px; margin-top:24px; max-width:700px;">
    <summary style="font-weight:bold; color:#1e3c72; cursor:pointer;">&#128196; View Original Desktop Java Swing Code (<code>CalculatorView.java</code>)</summary>
    <pre style="background:#282c34; color:#abb2bf; padding:16px; border-radius:6px; overflow-x:auto; font-size:12px; margin-top:12px; line-height:1.4;">package experiment_3;



import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionListener;

public class CalculatorView extends JFrame {

    private JLabel nameLabel;
    private JLabel expressionLabel;
    private JTextField displayField;
    private JButton[] numberButtons = new JButton[10];
    private JButton addButton, subButton, mulButton, divButton, modButton;
    
    private JButton openParenButton, closeParenButton;
    private JButton decButton, equButton, clrButton, delButton;

    public CalculatorView() {
        this.setTitle("Java Equation Calculator");
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setSize(360, 520);
        this.setLayout(null);
        this.setResizable(false);
        this.setLocationRelativeTo(null);

        nameLabel = new JLabel("MVC Architecture Calculator", SwingConstants.CENTER);
        nameLabel.setBounds(25, 10, 295, 20);
        nameLabel.setFont(new Font("Arial", Font.BOLD, 14));
        nameLabel.setForeground(Color.DARK_GRAY);

        expressionLabel = new JLabel("", SwingConstants.RIGHT);
        expressionLabel.setBounds(25, 35, 295, 20);
        expressionLabel.setFont(new Font("Arial", Font.PLAIN, 14));
        expressionLabel.setForeground(Color.GRAY);

        displayField = new JTextField("0.0");
        displayField.setBounds(25, 60, 295, 50);
        displayField.setFont(new Font("Arial", Font.BOLD, 20));
        displayField.setEditable(false);
        displayField.setHorizontalAlignment(JTextField.RIGHT);

        addButton = new JButton("+");
        subButton = new JButton("-");
        mulButton = new JButton("*");
        divButton = new JButton("/");
        modButton = new JButton("%");
        openParenButton = new JButton("(");
        closeParenButton = new JButton(")");
        decButton = new JButton(".");
        equButton = new JButton("=");
        clrButton = new JButton("C");
        delButton = new JButton("DEL");

        for (int i = 0; i &lt; 10; i++) {
            numberButtons[i] = new JButton(String.valueOf(i));
        }

        JPanel panel = new JPanel();
        panel.setBounds(25, 120, 295, 320);
        panel.setLayout(new GridLayout(5, 4, 8, 8));

        // Row 1
        panel.add(clrButton);
        panel.add(delButton);
        panel.add(openParenButton);
        panel.add(closeParenButton);

        // Row 2
        panel.add(numberButtons[7]);
        panel.add(numberButtons[8]);
        panel.add(numberButtons[9]);
        panel.add(divButton);

        // Row 3
        panel.add(numberButtons[4]);
        panel.add(numberButtons[5]);
        panel.add(numberButtons[6]);
        panel.add(mulButton);

        // Row 4
        panel.add(numberButtons[1]);
        panel.add(numberButtons[2]);
        panel.add(numberButtons[3]);
        panel.add(subButton);

        // Row 5
        panel.add(numberButtons[0]);
        panel.add(decButton);
        panel.add(modButton);
        panel.add(addButton);

        equButton.setBounds(25, 445, 295, 35);

        this.add(nameLabel);
        this.add(expressionLabel);
        this.add(displayField);
        this.add(panel);
        this.add(equButton);
    }

    public String getDisplayText() {
        return displayField.getText();
    }

    public void setDisplayText(String text) {
        displayField.setText(text);
    }

    public void setExpressionText(String text) {
        expressionLabel.setText(text);
    }

    public void addCalculatorListener(ActionListener listener) {
        for (int i = 0; i &lt; 10; i++) {
            numberButtons[i].addActionListener(listener);
        }
        addButton.addActionListener(listener);
        subButton.addActionListener(listener);
        mulButton.addActionListener(listener);
        divButton.addActionListener(listener);
        modButton.addActionListener(listener);
        openParenButton.addActionListener(listener);
        closeParenButton.addActionListener(listener);
        decButton.addActionListener(listener);
        equButton.addActionListener(listener);
        clrButton.addActionListener(listener);
        delButton.addActionListener(listener);
    }
}
</pre>
</details>

<script>
    var currentExpr = '';
    function press(ch) {
        currentExpr += ch;
        document.getElementById('exprLine').innerText = currentExpr;
        document.getElementById('display').value = currentExpr;
        document.getElementById('exprHidden').value = currentExpr;
    }
    function clearAll() {
        currentExpr = '';
        document.getElementById('exprLine').innerText = '';
        document.getElementById('display').value = '0.0';
        document.getElementById('exprHidden').value = '';
    }
    function backspace() {
        currentExpr = currentExpr.slice(0, -1);
        document.getElementById('exprLine').innerText = currentExpr;
        document.getElementById('display').value = currentExpr || '0.0';
        document.getElementById('exprHidden').value = currentExpr;
    }
    function evaluateClient() {
        try {
            var res = Function('return ' + currentExpr)();
            document.getElementById('display').value = res;
        } catch(e) {
            document.getElementById('display').value = 'Error';
        }
    }
</script>

<%@ include file="footer.jspf" %>
