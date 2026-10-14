<%@ include file="header.jspf" %>

<h2>7. RMI Calculator (Experiment 7) <span class="badge badge-desktop">VISUAL PREVIEW</span></h2>
<p style="color:#666; font-size:13px;">Demonstration of Java Remote Method Invocation (RMI) Client-Server Calculator matching <code>CalculatorClient.java</code>.</p>

<div style="max-width:440px; border-radius:8px; overflow:hidden; box-shadow:0 3px 12px rgba(0,0,0,0.15); border:1px solid #ccc; margin-bottom:20px;">
    <div style="background:#3b5998; color:white; padding:14px 18px;">
        <div style="font-weight:bold; font-size:16px;">Experiment 7 - RMI Calculator</div>
        <div style="font-size:12px; color:#dde1f5;">Remote Interface: calculator | Registry: rmi://localhost/CalculatorService</div>
    </div>
    <div style="background:#ebf0f9; padding:20px;">
        <label style="color:#1e2846; font-weight:bold;">Enter First Number:</label>
        <input type="text" id="rmiFirst" value="10" style="background:white; border:1px solid #bbb; padding:9px;">

        <label style="color:#1e2846; font-weight:bold;">Enter Second Number:</label>
        <input type="text" id="rmiSecond" value="5" style="background:white; border:1px solid #bbb; padding:9px;">

        <label style="color:#1e2846; font-weight:bold;">Result (Remote Execution):</label>
        <input type="text" id="rmiResult" value="0.0" readonly style="background:#d6e8d6; border:1px solid #a5d6a7; color:#1b5e20; font-weight:bold; font-size:18px; padding:9px;">

        <div style="display:grid; grid-template-columns:1fr 1fr; gap:12px; margin-top:14px;">
            <button class="btn btn-green"  onclick="rmiCalc('add')" style="padding:10px;">+ Add</button>
            <button class="btn btn-red"    onclick="rmiCalc('sub')" style="padding:10px;">- Subtract</button>
            <button class="btn btn-blue"   onclick="rmiCalc('mul')" style="padding:10px;">* Multiply</button>
            <button class="btn btn-orange" onclick="rmiCalc('div')" style="padding:10px;">/ Divide</button>
        </div>
    </div>
</div>

<details style="background:#f4f6f8; border:1px solid #ddd; border-radius:6px; padding:12px; margin-top:20px; max-width:800px;">
    <summary style="font-weight:bold; color:#1e3c72; cursor:pointer;">&#128196; View Original Desktop RMI Code (<code>CalculatorClient.java</code>)</summary>
    <pre style="background:#282c34; color:#abb2bf; padding:14px; border-radius:6px; overflow-x:auto; font-size:12px; line-height:1.4;">package experiment_7;

import javax.swing.*;
import javax.swing.border.*;
import java.awt.*;
import java.rmi.Naming;

/**
 * CalculatorClient.java
 *
 * Swing GUI client that connects to CalculatorService over RMI and
 * performs Add / Subtract / Multiply / Divide by invoking methods on
 * the remote object as if it were local.
 *
 * Run CalculatorServer.java first, then run this class.
 */
public class CalculatorClient extends JFrame {

    // ---- Color palette ----
    private static final Color BG_WINDOW   = new Color(235, 240, 249);
    private static final Color TITLE_BAR   = new Color(59, 89, 152);
    private static final Color FIELD_BG    = Color.WHITE;
    private static final Color RESULT_BG   = new Color(214, 232, 214);
    private static final Color LABEL_COLOR = new Color(30, 40, 70);

    private static final Color ADD_COLOR      = new Color(76, 175, 80);
    private static final Color SUBTRACT_COLOR = new Color(244, 67, 54);
    private static final Color MULTIPLY_COLOR = new Color(33, 150, 243);
    private static final Color DIVIDE_COLOR   = new Color(255, 152, 0);

    JTextField firstNumberField;
    JTextField secondNumberField;
    JTextField resultField;

    calculator calculator;

    public CalculatorClient() {

        setTitle("Experiment 7 - RMI Calculator");
        setSize(480, 420);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setLayout(new BorderLayout());

        connectToServer();

        // ---- Title strip (mirrors ChatServer/ChatClient header pattern) ----
        JPanel titleStrip = new JPanel();
        titleStrip.setLayout(new BoxLayout(titleStrip, BoxLayout.Y_AXIS));
        titleStrip.setBackground(TITLE_BAR);
        titleStrip.setBorder(new EmptyBorder(8, 12, 8, 12));

        JLabel titleLabel = new JLabel("RMI Arithmetic Calculator");
        titleLabel.setForeground(Color.WHITE);
        titleLabel.setFont(new Font("Arial", Font.BOLD, 16));
        titleLabel.setAlignmentX(Component.LEFT_ALIGNMENT);

        JLabel nameLabel = new JLabel("Distributed RMI Calculator");
        nameLabel.setForeground(new Color(220, 225, 245));
        nameLabel.setFont(new Font("Arial", Font.ITALIC, 13));
        nameLabel.setAlignmentX(Component.LEFT_ALIGNMENT);

        titleStrip.add(titleLabel);
        titleStrip.add(nameLabel);
        add(titleStrip, BorderLayout.NORTH);

        // ---- Form panel ----
        JPanel formPanel = new JPanel(new GridBagLayout());
        formPanel.setBackground(BG_WINDOW);
        formPanel.setBorder(new EmptyBorder(20, 25, 20, 25));

        GridBagConstraints gbc = new GridBagConstraints();
        gbc.insets = new Insets(8, 8, 8, 8);
        gbc.fill = GridBagConstraints.HORIZONTAL;

        Font labelFont = new Font("Arial", Font.BOLD, 14);
        Font fieldFont = new Font("Arial", Font.PLAIN, 14);

        // Row 0 - First Number
        gbc.gridx = 0;
        gbc.gridy = 0;
        gbc.weightx = 0;

        JLabel firstLabel = new JLabel("Enter First Number:");
        firstLabel.setFont(labelFont);
        firstLabel.setForeground(LABEL_COLOR);
        formPanel.add(firstLabel, gbc);

        gbc.gridx = 1;
        gbc.weightx = 1;

        firstNumberField = new JTextField();
        styleField(firstNumberField, fieldFont, FIELD_BG, true);
        formPanel.add(firstNumberField, gbc);

        // Row 1 - Second Number
        gbc.gridx = 0;
        gbc.gridy = 1;
        gbc.weightx = 0;

        JLabel secondLabel = new JLabel("Enter Second Number:");
        secondLabel.setFont(labelFont);
        secondLabel.setForeground(LABEL_COLOR);
        formPanel.add(secondLabel, gbc);

        gbc.gridx = 1;
        gbc.weightx = 1;

        secondNumberField = new JTextField();
        styleField(secondNumberField, fieldFont, FIELD_BG, true);
        formPanel.add(secondNumberField, gbc);

        // Row 2 - Result
        gbc.gridx = 0;
        gbc.gridy = 2;
        gbc.weightx = 0;

        JLabel resultLabel = new JLabel("Result:");
        resultLabel.setFont(labelFont);
        resultLabel.setForeground(LABEL_COLOR);
        formPanel.add(resultLabel, gbc);

        gbc.gridx = 1;
        gbc.weightx = 1;

        resultField = new JTextField();
        styleField(resultField, fieldFont, RESULT_BG, false);
        formPanel.add(resultField, gbc);

        // Row 3 - Buttons (2x2 grid, like the wireframe)
        JPanel buttonPanel = new JPanel(new GridLayout(2, 2, 15, 15));
        buttonPanel.setBackground(BG_WINDOW);

        JButton addButton      = makeButton("Add", ADD_COLOR);
        JButton subtractButton = makeButton("Subtract", SUBTRACT_COLOR);
        JButton multiplyButton = makeButton("Multiply", MULTIPLY_COLOR);
        JButton divideButton   = makeButton("Divide", DIVIDE_COLOR);

        addButton.addActionListener(e -&gt; performOperation("add"));
        subtractButton.addActionListener(e -&gt; performOperation("subtract"));
        multiplyButton.addActionListener(e -&gt; performOperation("multiply"));
        divideButton.addActionListener(e -&gt; performOperation("divide"));

        buttonPanel.add(addButton);
        buttonPanel.add(subtractButton);
        buttonPanel.add(multiplyButton);
        buttonPanel.add(divideButton);

        gbc.gridx = 0;
        gbc.gridy = 3;
        gbc.gridwidth = 2;
        gbc.weightx = 1;
        gbc.insets = new Insets(20, 8, 8, 8);

        formPanel.add(buttonPanel, gbc);

        add(formPanel, BorderLayout.CENTER);

        setVisible(true);
    }

    void connectToServer() {

        try {

            calculator = (calculator) Naming.lookup(
                    "rmi://localhost:1099/CalculatorService"
            );

            System.out.println(
                    "[Client] Connected to RMI CalculatorService."
            );

        } catch (Exception e) {

            JOptionPane.showMessageDialog(
                    this,
                    "Could not connect to the RMI server.\n"
                            + "Make sure CalculatorServer is running first.\n\n"
                            + e,
                    "Connection Error",
                    JOptionPane.ERROR_MESSAGE
            );

            System.exit(1);
        }
    }

    void styleField(
            JTextField field,
            Font font,
            Color background,
            boolean editable
    ) {

        field.setFont(font);
        field.setBackground(background);
        field.setEditable(editable);

        field.setBorder(new CompoundBorder(
                new LineBorder(new Color(150, 160, 190), 1, true),
                new EmptyBorder(5, 8, 5, 8)
        ));
    }

    JButton makeButton(String text, Color color) {

        JButton button = new JButton(text);
        button.setFont(new Font("Arial", Font.BOLD, 14));
        button.setBackground(color);
        button.setForeground(Color.WHITE);
        button.setFocusPainted(false);
        button.setOpaque(true);

        button.setBorder(new CompoundBorder(
                new LineBorder(color.darker(), 1, true),
                new EmptyBorder(10, 10, 10, 10)
        ));

        return button;
    }

    void performOperation(String operation) {

        try {

            double firstNumber = Double.parseDouble(
                    firstNumberField.getText().trim()
            );

            double secondNumber = Double.parseDouble(
                    secondNumberField.getText().trim()
            );

            double result;

            switch (operation) {

                case "add":
                    result = calculator.add(firstNumber, secondNumber);
                    break;

                case "subtract":
                    result = calculator.subtract(firstNumber, secondNumber);
                    break;

                case "multiply":
                    result = calculator.multiply(firstNumber, secondNumber);
                    break;

                case "divide":
                    result = calculator.divide(firstNumber, secondNumber);
                    break;

                default:
                    throw new IllegalStateException(
                            "Unknown operation: " + operation
                    );
            }

            resultField.setText(String.valueOf(result));

        } catch (NumberFormatException nfe) {

            JOptionPane.showMessageDialog(
                    this,
                    "Please enter valid numbers in both fields.",
                    "Invalid Input",
                    JOptionPane.WARNING_MESSAGE
            );

        } catch (ArithmeticException ae) {

            JOptionPane.showMessageDialog(
                    this,
                    ae.getMessage(),
                    "Arithmetic Error",
                    JOptionPane.ERROR_MESSAGE
            );

        } catch (Exception e) {

            JOptionPane.showMessageDialog(
                    this,
                    "Remote call failed: " + e.getMessage(),
                    "RMI Error",
                    JOptionPane.ERROR_MESSAGE
            );
        }
    }

    public static void main(String[] args) {

        SwingUtilities.invokeLater(() -&gt; new CalculatorClient());
    }
}
</pre>
</details>

<script>
    function rmiCalc(op) {
        var a = parseFloat(document.getElementById('rmiFirst').value) || 0;
        var b = parseFloat(document.getElementById('rmiSecond').value) || 0;
        var res = 0;
        if (op === 'add') res = a + b;
        else if (op === 'sub') res = a - b;
        else if (op === 'mul') res = a * b;
        else if (op === 'div') {
            if (b === 0) {
                document.getElementById('rmiResult').value = 'Error: Division by 0';
                return;
            }}
            res = a / b;
        }
        document.getElementById('rmiResult').value = res;
    }
</script>

<%@ include file="footer.jspf" %>
