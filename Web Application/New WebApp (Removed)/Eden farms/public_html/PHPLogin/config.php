 <?php
session_start();
$host = "localhost\SQLEXPRESS"; /* Host name */
$user = ""; /* User */
$password = ""; /* Password */
$dbname = "EdenFarmsDB"; /* Database name */

$con = mysqli_connect($host, $user, $password,$dbname);
// Check connection
if (!$con) {
 die("Connection failed: " . mysqli_connect_error());
}
?>