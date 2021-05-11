<?php 
session_start();

$DATABASE_HOST = 'localhost';
$DATABASE_USER = 'root';
$DATABASE_PASS = '12345';
$DATABASE_NAME = 'facial_analysi_and_record_tracking';

$con = mysqli_connect($DATABASE_HOST,$DATABASE_USER,$DATABASE_PASS,$DATABASE_NAME);
if(mysqli_connect_errno()) {
    exit("Failed to connect to MySql: " . mysqli_connect_error());
}

if(isset($_POST['submit']))
{
    $id = $_POST['roomid'];
    $stmt = $con->prepare('SELECT * FROM records WHERE RoomID=?');
    if($stmt) {
        $stmt->bind_param('i',$id);
        $stmt->execute();
        $result = $stmt->get_result();
        $stmt->close();
    }
    else{
        echo $con->error;
        exit();
    }
}

?>

<!DOCTYPE HTML>
<head>
    <title>
        Live Monitor
    </title>
    <style>
        body {
            background-color: aliceblue;
        }
        .header {
            padding: 20px;
            background-color: brown;
            color: white;
            text-align: center;
        }
        form {
            font-size: 30px;
        }
    </style>
</head>
<body>
    <div class="header"> <h1>Facial Analysis & Record Tracking</h1></div><br>
    <form method="POST" action="display.php">
        <label for="roomid">Enter the RoomID: </label>
        <select name="roomid" id="roomid" required>
            <option value="1">1</option>
            <option value="2">2</option>
        </select>
        <input type="submit" name="submit" value="Search">
    </form>
    <br><br>
    <table>
        <tr>
            <th>PersonID</th>
            <th>Person Name</th>
            <th>RoomID</th>
            <th>Room Name</th>
            <th>Status</th>
            <th>Entry Time</th>
            <th>Exit Time</th>
        </tr>
        <?php
        if($result){
            while($rows=$result->fetch_assoc())
            {
        ?>
        <tr>
            <td><?php echo $rows['PersonID'];?></td>
            <td>TDA</td>
            <td><?php echo $rows['RoomID'];?></td>
            <td>TDA</td>
            <td><?php echo $rows['Status'];?></td>
            <td><?php echo $rows['Entry_Time'];?></td>
            <td><?php echo $rows['Exit_Time'];?></td>
        </tr>
        <?php } }else { echo "Result doesn't exit";} ?>
    </table>
</body>
</html>