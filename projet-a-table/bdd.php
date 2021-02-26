<!DOCTYPE html>
<html>
    <head>
        <title> PHP/BDD</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="cours.css">
    </head>
    <body>
        <h1>BDD</h1>
        <?php
        // CREATION BDD
            $servername = 'localhost';
            $username = 'root';
            $password = '';

            try{
                $dbco = new PDO("mysql:host=$servername", $username, $password);
                $dbco->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                $sql = "CREATE DATABASE restaurant";
                $dbco->exec($sql);

                echo 'Base de données créée bien créée !';
            }

            catch(PDOException $e){
              echo "Erreur : " . $e->getMessage();
            }
        ?>
      
    </body>
</html>
