<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>AJAX - API</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>

<body>
  <div class="container">
    <h2>AJAX - API request</h2>
    <button type="button" id="btn" class="btn btn-primary">Load content</button>
    <hr>
    <div id="content" class="row  row-cols-1 row-cols-md-3 " style=" margin-left:30px; text-align:center; gap:3rem;"></div>
  </div>

  <script>
    document.getElementById('btn').addEventListener('click', loadApiContent);
    let content = document.getElementById('content');


    function loadApiContent() {
      let ajReq = new XMLHttpRequest();
      ajReq.open("GET", "displayAll.php");
      ajReq.onload = function() {
        if (ajReq.status == 200) {
          const users = JSON.parse(ajReq.responseText);
          console.log(users);

          for (let i in users) {
            content.innerHTML += `<div class="card" style="width: 18rem;"><img src="../pictures/${users[i].picture}" class="card-img-top" alt="..."><div class="card-body"><h5 class="card-title">${users[i].place}</h5><p class="card-text">${users[i].country}</p><p class="card-text">${users[i].des}</p><p class="card-text">${users[i].sect}</p><p class="card-text">${users[i].lat}</p><p class="card-text">${users[i].lon}</p><p class="card-text">${users[i].price}</p></div></div>`
          }
        }
      };
      ajReq.send();
    }
  </script>
</body>

</html>