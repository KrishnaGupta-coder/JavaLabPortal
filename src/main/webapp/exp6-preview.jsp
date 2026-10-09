<%@ include file="header.jspf" %>

<h2>6. Network Chat Application <span class="badge badge-desktop">VISUAL PREVIEW</span></h2>
<p style="color:#666; font-size:13px;">Demonstration of Java TCP/IP Client-Server Socket Chat architecture. Simulated message exchange between client and server windows.</p>

<div style="display:flex; gap:20px; flex-wrap:wrap;">

    <div style="flex:1; min-width:300px; border:1px solid #ccc; border-radius:6px; overflow:hidden;">
        <div style="background:#f5f5f5; padding:10px; display:flex; align-items:center; gap:10px; border-bottom:1px solid #ddd;">
            <div style="width:36px; height:36px; border-radius:50%; background:#3f51b5; color:white; display:flex; align-items:center; justify-content:center; font-weight:bold;">KG</div>
            <strong>Krishna Gupta - Server</strong>
        </div>
        <div id="serverChat" style="height:260px; overflow-y:auto; padding:10px; background:white; font-size:13px;"></div>
        <div style="display:flex; border-top:1px solid #ddd;">
            <input type="text" id="serverInput" placeholder="Type a message..." style="flex:1; border:none; margin:0; border-radius:0; padding:10px;">
            <button onclick="sendMessage('server')" class="btn btn-blue" style="border-radius:0;">Send</button>
        </div>
    </div>

    <div style="flex:1; min-width:300px; border:1px solid #ccc; border-radius:6px; overflow:hidden;">
        <div style="background:#f5f5f5; padding:10px; display:flex; align-items:center; gap:10px; border-bottom:1px solid #ddd;">
            <div style="width:36px; height:36px; border-radius:50%; background:#4caf50; color:white; display:flex; align-items:center; justify-content:center; font-weight:bold;">RB</div>
            <strong>Ram Babu Buri Sir - Client</strong>
        </div>
        <div id="clientChat" style="height:260px; overflow-y:auto; padding:10px; background:white; font-size:13px;"></div>
        <div style="display:flex; border-top:1px solid #ddd;">
            <input type="text" id="clientInput" placeholder="Type a message..." style="flex:1; border:none; margin:0; border-radius:0; padding:10px;">
            <button onclick="sendMessage('client')" class="btn btn-green" style="border-radius:0;">Send</button>
        </div>
    </div>

</div>

<script>
    function addBubble(paneId, sender, text, color) {
        var pane = document.getElementById(paneId);
        var bubble = document.createElement('div');
        bubble.style.marginBottom = '8px';
        bubble.style.color = color;
        bubble.innerHTML = '<strong>' + sender + ':</strong> ' + text;
        pane.appendChild(bubble);
        pane.scrollTop = pane.scrollHeight;
    }

    function sendMessage(from) {
        var inputId = (from === 'server') ? 'serverInput' : 'clientInput';
        var input = document.getElementById(inputId);
        var text = input.value.trim();
        if (text === '') return;

        var senderName = (from === 'server') ? 'Krishna Gupta' : 'Ram Babu Buri Sir';
        var color = (from === 'server') ? '#0078aa' : '#008000';

        // Simulate the message reaching "both ends" the way a real socket would.
        addBubble('serverChat', senderName, text, color);
        addBubble('clientChat', senderName, text, color);

        input.value = '';
    }

    document.getElementById('serverInput').addEventListener('keypress', function(e) {
        if (e.key === 'Enter') sendMessage('server');
    });
    document.getElementById('clientInput').addEventListener('keypress', function(e) {
        if (e.key === 'Enter') sendMessage('client');
    });

    addBubble('serverChat', 'System', 'Server started. Waiting for client...', '#888');
    addBubble('clientChat', 'System', 'Connected to server.', '#888');
</script>

<%@ include file="footer.jspf" %>


