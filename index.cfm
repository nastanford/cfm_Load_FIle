<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Load File</title>
  <style>
    body {
      font-family: Arial, Helvetica, sans-serif;
    }

    div.display {
      color: #dddddd;
      background-color: #336699;
      padding: 10px;
      border-radius: 10px;
      margin: 10px;
      font-size: 1rem;  
    }
    .tbl {
      border-collapse: collapse;
    }
    
    .tbl td, .tbl th {
      border: 1px solid #ddd;
      padding: 8px;
    }
  </style>
</head>
<body>
<h1>Load File into div</h1>

<div id="results" class="display"></div>

<button id="load">Load File</button>

<script>
  document.getElementById('load').addEventListener('click', function() {
    loadFile('data.cfm');
  });

  async function loadFile(file) {
    try {
      const res = await fetch(file);
      const data = await res.text();
      document.getElementById('results').innerHTML = data;
    } catch(err) {
      console.log(err);
    }
  }
</script>

</body>
</html>