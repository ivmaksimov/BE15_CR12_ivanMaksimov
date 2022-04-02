<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Show all users</title>
</head>

<body>

  <button id="button">Get users</button>

  <h1>Users</h1>
  <div id="content">
    <!--our users will be displayed in this div-->
  </div>

  <script>
    document.getElementById("button").addEventListener("click", loadApiContent);
    let content = document.getElementById('content');
    //create an eventlistener to call getUsers() function when button clicked

    function loadApiContent() {
      let ajReq = new XMLHttpRequest();
      ajReq.open("GET", "displayAll.php");
      ajReq.onload = function() {
        if (ajReq.status == 200) {
          // console.log(ajReq.responseText)                    
          const data = JSON.parse(ajReq.responseText);
          for (let i in data) {

            content.innerHTML += ` < p > first name: $ {
              users[i].place
            }
            last name: $ {
              users[i].country
            } < /p>`
          }
          document.getElementById('users').innerHTML = output; //output results in div#users
          // });
        }
      }

    }
  </script>
</body>

</html>