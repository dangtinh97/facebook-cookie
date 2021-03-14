<?php
session_start();
ini_set('display_errors', 1);

require_once '../../config.php';
require_once $_SERVER['DOCUMENT_ROOT'] . '/facebook/config.php';

class AuthController
{
    protected $conn;

    public function __construct($conn)
    {

        $this->conn = $conn;
        //var_dump($conn);
    }

    public function login($username, $password)
    {
        $password = md5($password);
        $SQL = mysqli_query($this->conn, "SELECT * FROM account WHERE username = '$username' AND password = '$password'");
        $login = mysqli_num_rows($SQL);
        if ($login > 0){
            $_SESSION['admin_login']=true;
            die(($this->response()));
        }
        die(($this->response(201,'đăng nhập thất bại')));
    }

    private function response($status=200,$content = 'thành công',$data=[]){
        return json_encode([
            'status'=>$status,
            'content'=>$content,
            'data'=>(object)$data
        ]);
    }

}

$auth = new AuthController($kunloc);

if (($_SERVER['REQUEST_METHOD'])=="POST") {
    switch ($_POST['type']) {
        case 'login':
            $auth->login($_POST['username'], $_POST['password']);
            break;
        default:
            break;
    }
}




