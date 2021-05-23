<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BarcodeScanner.Default" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Barcode Scanner Demo</title>
    <script type="text/javascript" src="Scripts/modernizr-2.8.3.js"></script>
    <link rel="stylesheet" href="Content/Site.css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
    <noscript>
        <style>
            html, body {
                height: 100%;
                width: 100%;
                overflow: hidden;
                margin: 0;
                padding: 0;
                font-size: 16px;
                font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
            }

            div {
                width: 100%;
                height: 100%;
                background-color: #fff;
                color: #000;
                z-index: 30000;
            }

            h1 {
                color: dodgerblue;
            }

            h1, h2, h3 {
                text-align: center;
            }
        </style>
        <div>
            <h1>We're sorry :( </h1>
            <h2>It looks like your browser doesn't support JavaScript, or has it disabled.</h2>
            <h3>Please visit this website from a browser that supports JavaScript.</h3>
        </div>
    </noscript>
    <header>
        <h1>Barcode Scanner Demo</h1>
    </header>
    <main>
        <form runat="server"></form>

    </main>
    <footer>
        <p>&copy; <%: DateTime.Now.Year %> - Barcode Scanner Demo</p>
    </footer>

</body>
</html>
