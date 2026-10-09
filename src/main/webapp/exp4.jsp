<%@ include file="header.jspf" %>

<h2>4. Drawing Shapes (Hello World / Rectangle / Filled Oval)</h2>
<p style="color:#666; font-size:13px;">
    Note: Java Applets are deprecated and no longer run in any modern
    browser. This is the browser-native equivalent - an HTML5
    <code>&lt;canvas&gt;</code> drawn with JavaScript, matching the
    same shapes and colors as the original <code>DrawShapes.java</code>.
</p>

<div class="card">
    <canvas id="shapeCanvas" width="500" height="350" style="background:white; border:1px solid #ccc; display:block; margin-bottom:14px;"></canvas>

    <button type="button" class="btn btn-red"    onclick="drawHelloWorld()">Draw "Hello World"</button>
    <button type="button" class="btn btn-blue"   onclick="drawRectangle()">Draw Rectangle</button>
    <button type="button" class="btn btn-purple" onclick="drawFilledOval()">Draw Filled Oval</button>
    <button type="button" class="btn btn-orange" onclick="clearCanvas()">Clear Canvas</button>
</div>

<script>
    var canvas = document.getElementById('shapeCanvas');
    var ctx = canvas.getContext('2d');

    function resetLabel() {
        ctx.fillStyle = 'black';
        ctx.font = '20px Arial';
        ctx.fillText('Run by Krishna Gupta', 40, 30);
    }
    resetLabel();

    function drawHelloWorld() {
        ctx.fillStyle = 'red';
        ctx.font = '20px Arial';
        ctx.fillText('Hello World', 80, 70);
    }

    function drawRectangle() {
        ctx.strokeStyle = '#2196f3';
        ctx.fillStyle = '#bbdefb';
        ctx.lineWidth = 2;
        ctx.fillRect(250, 130, 150, 100);
        ctx.strokeRect(250, 130, 150, 100);
    }

    function drawFilledOval() {
        ctx.beginPath();
        ctx.ellipse(140, 200, 60, 60, 0, 0, 2 * Math.PI);
        ctx.fillStyle = 'cyan';
        ctx.fill();
        ctx.strokeStyle = 'pink';
        ctx.lineWidth = 3;
        ctx.stroke();
    }

    function clearCanvas() {
        ctx.clearRect(0, 0, canvas.width, canvas.height);
        resetLabel();
    }
</script>

<%@ include file="footer.jspf" %>

