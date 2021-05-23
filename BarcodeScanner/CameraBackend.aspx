<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Camera.aspx.cs" Inherits="BarcodeScanner.Camera" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>VotaChat Barcode Reader Demo</title>
    <script type="text/javascript" src="Scripts/modernizr-2.8.3.js"></script>
    <link rel="stylesheet" href="Content/Camera.css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
    <header>
        <h1>VotaChat Barcode Reader</h1>
    </header>
    <div id="camera">
        <video id="player" autoplay></video>
        <button id="capture" onclick="cameraClick(this);">Capture Image</button>
        <canvas id="canvas" hidden></canvas>
        <div>
            <asp:Label ID="txtBarcodeResult" runat="server"></asp:Label>
        </div>
    </div>
    <footer>
        <div class="footer-content">
            <p>&copy; <%: DateTime.Now.Year %> - VotaChat Barcode Reader Demo</p>
        </div>
    </footer>
    <script type="text/javascript">
        // Check for mediaDevices API
        if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {

            var cameraOn = false;

            var video = document.getElementById('player');
            var canvas = document.getElementById('canvas');
            var context = canvas.getContext('2d');
            var button = documet.getElementById('button');

            var constraints = {
                audio: false,
                video: {
                    facingMode: 'environment'
                }
            };

            // Not adding `{ audio: true }` since we only want video now
            navigator.mediaDevices.getUserMedia(constraints).then(function (stream) {
                video.srcObject = stream;
                video.setAttribute("playsinline", true); // required to tell iOS safari we don't want fullscreen
                video.play();
            }).catch(function (error) {
                console.log(error);
            });

            function cameraClick(sender) {
                if (sender.innerText == "Capture Image") {
                    takePhoto();
                }
                else {
                    startCamera();
                }
            }

            function takePhoto() {
                if (video.readyState === video.HAVE_ENOUGH_DATA) {
                    canvas.width = video.videoWidth;
                    canvas.height = video.videoHeight;
                    context.drawImage(video, 0, 0, canvas.width, canvas.height); // Capture an image from the camera

                    stopVideo();
                    video.style.visibility = "hidden";
                    canvas.style.visibility = "visible";
                    button.innerText = "Restart Camera"
                }
            }

            function startCamera() {
                startVideo();
                video.style.visibility = "visible";
                canvas.style.visibility = "hidden";
                button.innerText = "Capture Image"
            }

            function stopVideo() {
                video.srcObject.getVideoTracks().forEach(track => track.stop());
            }

            function startVideo() {
                video.srcObject.getVideoTracks().forEach(track => track.start());
            }
    </script>
</body>
</html>
