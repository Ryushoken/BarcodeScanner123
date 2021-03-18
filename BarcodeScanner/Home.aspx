<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BarcodeScanner.Home" %>

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
    <header>
        <h1>ZXing Barcode Scanner Demo</h1>
    </header>
    <main>
        <ul style="width: 100%">
            <li><a class="btn" href="#">Server Side (Legacy) Demo</a></li>
            <li><a class="btn" href="#">WebAssembly (WASM) Demo</a></li>
            <li><a class="btn" href="#">Camera (WASM) Demo</a></li>
        </ul>
    </main>
    <footer>
        <p>&copy; <%: DateTime.Now.Year %> - ZXing Barcode Scanner Demo</p>
    </footer>
</body>
</html>
