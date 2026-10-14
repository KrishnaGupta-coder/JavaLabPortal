<%@ include file="header.jspf" %>

<h2>6. Network Chat Application (Experiment 6) <span class="badge badge-desktop">VISUAL PREVIEW</span></h2>
<p style="color:#666; font-size:13px;">Demonstration of Java TCP/IP Client-Server Socket Chat architecture matching <code>ChatServer.java</code> and <code>ChatClient.java</code>.</p>

<div style="display:flex; gap:20px; flex-wrap:wrap; margin-bottom:20px;">

    <!-- Server Window (Krishna Gupta) -->
    <div style="flex:1; min-width:300px; border:2px solid #3f51b5; border-radius:8px; overflow:hidden; box-shadow:0 3px 10px rgba(0,0,0,0.1);">
        <div style="background:#f5f5f5; padding:10px 14px; display:flex; align-items:center; gap:12px; border-bottom:1px solid #ddd;">
            <img src="${pageContext.request.contextPath}/images/Krishna_Gupta.png" alt="Krishna Gupta" style="width:44px; height:44px; border-radius:50%; object-fit:cover; border:2px solid #3f51b5;">
            <div>
                <strong style="color:#1a237e; font-size:15px;">Krishna Gupta - Server</strong>
                <div style="font-size:11px; color:#4caf50;">&#9679; Socket Port: 5000 Active</div>
            </div>
        </div>
        <div id="serverChat" style="height:260px; overflow-y:auto; padding:12px; background:#e8eaf6; font-size:13px;"></div>
        <div style="display:flex; border-top:1px solid #ddd; background:white;">
            <input type="text" id="serverInput" placeholder="Server: Type a response..." style="flex:1; border:none; margin:0; border-radius:0; padding:11px;">
            <button class="btn btn-blue" style="border-radius:0; margin:0; padding:0 20px;" onclick="sendMsg('server')">Send</button>
        </div>
    </div>

    <!-- Client Window (Ram Babu Buri Sir) -->
    <div style="flex:1; min-width:300px; border:2px solid #4caf50; border-radius:8px; overflow:hidden; box-shadow:0 3px 10px rgba(0,0,0,0.1);">
        <div style="background:#f5f5f5; padding:10px 14px; display:flex; align-items:center; gap:12px; border-bottom:1px solid #ddd;">
            <img src="${pageContext.request.contextPath}/images/Ram_Babu_Buri_Sir.jpg" alt="Ram Babu Buri Sir" style="width:44px; height:44px; border-radius:50%; object-fit:cover; border:2px solid #4caf50;">
            <div>
                <strong style="color:#1b5e20; font-size:15px;">Ram Babu Buri Sir - Client</strong>
                <div style="font-size:11px; color:#4caf50;">&#9679; Connected to localhost:5000</div>
            </div>
        </div>
        <div id="clientChat" style="height:260px; overflow-y:auto; padding:12px; background:#e8f5e9; font-size:13px;"></div>
        <div style="display:flex; border-top:1px solid #ddd; background:white;">
            <input type="text" id="clientInput" placeholder="Client: Ask question..." style="flex:1; border:none; margin:0; border-radius:0; padding:11px;">
            <button class="btn btn-green" style="border-radius:0; margin:0; padding:0 20px;" onclick="sendMsg('client')">Send</button>
        </div>
    </div>
</div>

<details style="background:#f4f6f8; border:1px solid #ddd; border-radius:6px; padding:12px; margin-top:20px; max-width:800px;">
    <summary style="font-weight:bold; color:#1e3c72; cursor:pointer;">&#128196; View Original Desktop Socket Code (<code>ChatServer.java</code> &amp; <code>ChatClient.java</code>)</summary>
    <h4 style="margin:12px 0 6px 0; color:#3f51b5;">ChatServer.java</h4>
    <pre style="background:#282c34; color:#abb2bf; padding:14px; border-radius:6px; overflow-x:auto; font-size:12px; line-height:1.4;">package experiment_6;

import javax.swing.*;
import javax.swing.text.*;
import java.awt.*;
import java.io.*;
import java.net.*;

public class ChatServer extends JFrame {

    JTextPane chatArea;
    JTextArea input;
    DataOutputStream out;
    DataInputStream in;

    public ChatServer() {

        setTitle("Krishna Gupta - Server");
        setSize(600, 650);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setLayout(new BorderLayout());

        // Header
        JPanel header = new JPanel(new FlowLayout(FlowLayout.LEFT));
        header.setBackground(new Color(245, 245, 245));

        ImageIcon icon = new ImageIcon(
                getClass().getResource("Krishna_Gupta.png")
        );

        Image image = icon.getImage().getScaledInstance(
                55, 55, Image.SCALE_SMOOTH
        );

        JLabel photo = new JLabel(new ImageIcon(image));

        JLabel name = new JLabel("Krishna Gupta");
        name.setFont(new Font("Arial", Font.BOLD, 18));

        header.add(photo);
        header.add(name);

        add(header, BorderLayout.NORTH);

        // Chat Area
        chatArea = new JTextPane();
        chatArea.setEditable(false);

        JScrollPane scroll = new JScrollPane(chatArea);

        scroll.setVerticalScrollBarPolicy(
                JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED
        );

        scroll.setHorizontalScrollBarPolicy(
                JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED
        );

        add(scroll, BorderLayout.CENTER);

        // Input Area
        input = new JTextArea(3, 30);
        input.setLineWrap(false);

        JScrollPane inputScroll = new JScrollPane(input);

        JButton emoji = new JButton("😊");
        JButton send = new JButton("Send");

        JPanel buttons = new JPanel();
        buttons.add(emoji);
        buttons.add(send);

        JPanel bottom = new JPanel(new BorderLayout());

        bottom.add(inputScroll, BorderLayout.CENTER);
        bottom.add(buttons, BorderLayout.EAST);

        add(bottom, BorderLayout.SOUTH);

        // Send Button
        send.addActionListener(e -&gt; sendMessage());

        // Emoji Button
        emoji.addActionListener(e -&gt; {

            String[] emojis = {
                    "😀", "😂", "😍", "😊",
                    "👍", "👏", "❤️", "🔥"
            };

            String selected = (String) JOptionPane.showInputDialog(
                    this,
                    "Select Emoji",
                    "Emoji",
                    JOptionPane.PLAIN_MESSAGE,
                    null,
                    emojis,
                    emojis[0]
            );

            if (selected != null)
                input.insert(
                        selected,
                        input.getCaretPosition()
                );
        });

        setVisible(true);

        startServer();
    }

    void startServer() {

        new Thread(() -&gt; {

            try {

                ServerSocket server =
                        new ServerSocket(12345);

                addMessage(
                        "System",
                        "Server started. Waiting for client...",
                        false
                );

                Socket socket = server.accept();

                in = new DataInputStream(
                        socket.getInputStream()
                );

                out = new DataOutputStream(
                        socket.getOutputStream()
                );

                addMessage(
                        "System",
                        "Ram Babu Buri Sir connected.",
                        false
                );

                while (true) {

                    String message = in.readUTF();

                    addMessage(
                            "Ram Babu Buri Sir",
                            message,
                            false
                    );
                }

            } catch (IOException e) {

                addMessage(
                        "System",
                        "Connection closed.",
                        false
                );
            }

        }).start();
    }

    void sendMessage() {

        String message = input.getText();

        if (message.trim().isEmpty())
            return;

        try {

            if (out != null) {

                out.writeUTF(message);
                out.flush();

                addMessage(
                        "Krishna Gupta",
                        message,
                        true
                );

                input.setText("");
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    void addMessage(
            String name,
            String message,
            boolean right
    ) {

        SwingUtilities.invokeLater(() -&gt; {

            try {

                StyledDocument doc =
                        chatArea.getStyledDocument();

                SimpleAttributeSet style =
                        new SimpleAttributeSet();

                StyleConstants.setFontFamily(
                        style,
                        "Arial"
                );

                StyleConstants.setFontSize(
                        style,
                        15
                );

                if (right) {

                    StyleConstants.setAlignment(
                            style,
                            StyleConstants.ALIGN_RIGHT
                    );

                    StyleConstants.setForeground(
                            style,
                            new Color(0, 120, 0)
                    );

                } else {

                    StyleConstants.setAlignment(
                            style,
                            StyleConstants.ALIGN_LEFT
                    );

                    StyleConstants.setForeground(
                            style,
                            new Color(0, 80, 170)
                    );
                }

                doc.setParagraphAttributes(
                        doc.getLength(),
                        1,
                        style,
                        false
                );

                doc.insertString(
                        doc.getLength(),
                        name + ": " + message + "\n\n",
                        style
                );

                chatArea.setCaretPosition(
                        doc.getLength()
                );

            } catch (BadLocationException e) {
                e.printStackTrace();
            }
        });
    }

    public static void main(String[] args) {

        new ChatServer();
    }
}</pre>
    <h4 style="margin:16px 0 6px 0; color:#4caf50;">ChatClient.java</h4>
    <pre style="background:#282c34; color:#abb2bf; padding:14px; border-radius:6px; overflow-x:auto; font-size:12px; line-height:1.4;">package experiment_6;

import javax.swing.*;
import javax.swing.text.*;
import java.awt.*;
import java.io.*;
import java.net.*;

public class ChatClient extends JFrame {

    JTextPane chatArea;
    JTextArea input;
    DataOutputStream out;
    DataInputStream in;

    public ChatClient() {

        setTitle("Ram Babu Buri Sir - Client");
        setSize(600, 650);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setLayout(new BorderLayout());

        // Header
        JPanel header = new JPanel(new FlowLayout(FlowLayout.LEFT));
        header.setBackground(new Color(245, 245, 245));

        ImageIcon icon = new ImageIcon(
                getClass().getResource("Ram_Babu_Buri_Sir.jpg")
        );

        Image image = icon.getImage().getScaledInstance(
                55, 55, Image.SCALE_SMOOTH
        );

        JLabel photo = new JLabel(new ImageIcon(image));

        JLabel name = new JLabel("Ram Babu Buri Sir");
        name.setFont(new Font("Arial", Font.BOLD, 18));

        header.add(photo);
        header.add(name);

        add(header, BorderLayout.NORTH);

        // Chat Area
        chatArea = new JTextPane();
        chatArea.setEditable(false);

        JScrollPane scroll = new JScrollPane(chatArea);

        scroll.setVerticalScrollBarPolicy(
                JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED
        );

        scroll.setHorizontalScrollBarPolicy(
                JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED
        );

        add(scroll, BorderLayout.CENTER);

        // Input Area
        input = new JTextArea(3, 30);
        input.setLineWrap(false);

        JScrollPane inputScroll = new JScrollPane(input);

        JButton emoji = new JButton("😊");
        JButton send = new JButton("Send");

        JPanel buttons = new JPanel();
        buttons.add(emoji);
        buttons.add(send);

        JPanel bottom = new JPanel(new BorderLayout());

        bottom.add(
                inputScroll,
                BorderLayout.CENTER
        );

        bottom.add(
                buttons,
                BorderLayout.EAST
        );

        add(bottom, BorderLayout.SOUTH);

        // Send Button
        send.addActionListener(e -&gt; sendMessage());

        // Emoji Button
        emoji.addActionListener(e -&gt; {

            String[] emojis = {
                    "😀", "😂", "😍", "😊",
                    "👍", "👏", "❤️", "🔥"
            };

            String selected = (String) JOptionPane.showInputDialog(
                    this,
                    "Select Emoji",
                    "Emoji",
                    JOptionPane.PLAIN_MESSAGE,
                    null,
                    emojis,
                    emojis[0]
            );

            if (selected != null)
                input.insert(
                        selected,
                        input.getCaretPosition()
                );
        });

        setVisible(true);

        connect();
    }

    void connect() {

        new Thread(() -&gt; {

            try {

                Socket socket =
                        new Socket("localhost", 12345);

                in = new DataInputStream(
                        socket.getInputStream()
                );

                out = new DataOutputStream(
                        socket.getOutputStream()
                );

                addMessage(
                        "System",
                        "Connected to server.",
                        false
                );

                while (true) {

                    String message = in.readUTF();

                    addMessage(
                            "Krishna Gupta",
                            message,
                            false
                    );
                }

            } catch (IOException e) {

                addMessage(
                        "System",
                        "Unable to connect. Start Server first.",
                        false
                );
            }

        }).start();
    }

    void sendMessage() {

        String message = input.getText();

        if (message.trim().isEmpty())
            return;

        try {

            if (out != null) {

                out.writeUTF(message);
                out.flush();

                addMessage(
                        "Ram Babu Buri Sir",
                        message,
                        true
                );

                input.setText("");
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    void addMessage(
            String name,
            String message,
            boolean right
    ) {

        SwingUtilities.invokeLater(() -&gt; {

            try {

                StyledDocument doc =
                        chatArea.getStyledDocument();

                SimpleAttributeSet style =
                        new SimpleAttributeSet();

                StyleConstants.setFontFamily(
                        style,
                        "Arial"
                );

                StyleConstants.setFontSize(
                        style,
                        15
                );

                if (right) {

                    StyleConstants.setAlignment(
                            style,
                            StyleConstants.ALIGN_RIGHT
                    );

                    StyleConstants.setForeground(
                            style,
                            new Color(0, 120, 0)
                    );

                } else {

                    StyleConstants.setAlignment(
                            style,
                            StyleConstants.ALIGN_LEFT
                    );

                    StyleConstants.setForeground(
                            style,
                            new Color(0, 80, 170)
                    );
                }

                doc.setParagraphAttributes(
                        doc.getLength(),
                        1,
                        style,
                        false
                );

                doc.insertString(
                        doc.getLength(),
                        name + ": " + message + "\n\n",
                        style
                );

                chatArea.setCaretPosition(
                        doc.getLength()
                );

            } catch (BadLocationException e) {
                e.printStackTrace();
            }
        });
    }

    public static void main(String[] args) {

        new ChatClient();
    }
}</pre>
</details>

<script>
    function addMsg(targetId, text, isMe) {
        var box = document.getElementById(targetId);
        var div = document.createElement('div');
        div.style.marginBottom = '8px';
        div.style.padding = '8px 12px';
        div.style.borderRadius = '6px';
        div.style.maxWidth = '80%';
        div.style.wordBreak = 'break-word';
        if (isMe) {
            div.style.background = '#dcf8c6';
            div.style.marginLeft = 'auto';
            div.style.textAlign = 'right';
        } else {
            div.style.background = 'white';
            div.style.boxShadow = '0 1px 2px rgba(0,0,0,0.1)';
        }
        div.innerText = text;
        box.appendChild(div);
        box.scrollTop = box.scrollHeight;
    }

    function sendMsg(from) {
        var inputId = (from === 'server') ? 'serverInput' : 'clientInput';
        var input = document.getElementById(inputId);
        var text = input.value.trim();
        if (!text) return;
        var senderName = (from === 'server') ? 'Krishna Gupta' : 'Ram Babu Buri Sir';

        addMsg('serverChat', (from === 'server' ? 'Me: ' : senderName + ': ') + text, from === 'server');
        addMsg('clientChat', (from === 'client' ? 'Me: ' : senderName + ': ') + text, from === 'client');
        input.value = '';
    }

    window.onload = function() {
        addMsg('clientChat', 'Ram Babu Buri Sir: Good afternoon Krishna. Please run Experiment 6 demonstration.', false);
        addMsg('serverChat', 'Ram Babu Buri Sir: Good afternoon Krishna. Please run Experiment 6 demonstration.', false);
        addMsg('serverChat', 'Me: Good afternoon Sir! Socket server is listening on port 5000 and client is connected.', true);
        addMsg('clientChat', 'Krishna Gupta: Good afternoon Sir! Socket server is listening on port 5000 and client is connected.', false);
    };
</script>

<%@ include file="footer.jspf" %>
