<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BarcodeScanner.Default" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>ZXing Barcode Scanner Demo</title>
    <script type="text/javascript" src="Scripts/modernizr-2.8.3.js"></script>
    <link rel="stylesheet" href="Content/Site.css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
    <form runat="server">
        <header>
            <h1>ZXing Barcode Scanner Demo</h1>
        </header>
        <main>
            <div>
                <h2>Legacy Browser Demo (ZXing.NET Server Side Processing)</h2>
                <div class="container left">
                    <input type="file" multiple />
                    <br />
                    <asp:Button ID="btnSubmitLegacy" Text="Submit" runat="server" />
                    <label class="output">Output:</label>
                    <div class="output"></div>
                </div>
            </div>

            <div >
                <h2>Modern Browser Demo (ZXing Webassembly)</h2>

                <div class="container">
                    <h3>Demo 1: Image Upload</h3>
                    <div class="left">
                        <input type="file" multiple />
                        <br />
                        <asp:Button ID="Button1" Text="Submit" runat="server" />
                        <label class="output">Output:</label>
            <div class="output"></div>
                    </div>
                </div>

                <div id="cameraDemo" class="container">
                    <h3 class="centered">Demo 2: Device Camera</h3>
                    <div class="crop">
                         <video id="cameraStream" height="240" autoplay></video>
                    </div>
                    <div class="centered">
                        <button id="cameraStart">Start Camera</button>
                        <label class="output">Output:</label>
                        <div class="output"></div>
                    </div>

                    
                </div>
            </div>

        </main>
        <footer style="font-size: 0.9em">
            <p>&copy; <%: DateTime.Now.Year %> - ZXing Barcode Scanner Demo</p>
        </footer>
    </form>
    <script type="text/javascript" src="Scripts/zxing.js"></script>
    <script type="text/javascript" src="Scripts/app.js"></script>
    <script type="text/javascript">
        if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
            // Grab elements, create settings, etc.
            var video = document.getElementById('cameraStream');

            // Not adding `{ audio: true }` since we only want video now
            navigator.mediaDevices.getUserMedia({ audio: false, video: { facingMode: 'environment', width: { ideal: 1920 } }, height: {ideal: 1080}}).then(function (stream) {
                //video.src = window.URL.createObjectURL(stream);
                video.srcObject = stream;
                video.play();
            }).catch(function (error) {
                //document.getElementById('cameraDemo').innerHTML = error;
                //document.getElementById('cameraDemo').removeAttribute('class');
            });
        }
        else {
            document.getElementById('cameraDemo').innerHTML = '<span style="color: red;">Camera not supported.</span>';
            document.getElementById('cameraDemo').removeAttribute('class');
        }
    </script>
</body>
</html>
