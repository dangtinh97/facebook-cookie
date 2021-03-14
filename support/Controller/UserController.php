<?php
session_start();
ini_set('display_errors', 1);

require_once '../../config.php';
require_once '../config.php';

class UserController
{
    protected $conn;

    public function __construct($conn)
    {

        $this->conn = $conn;
        //var_dump($conn);
    }

    public function index()
    {
        $SQL = mysqli_query($this->conn, "SELECT * FROM  `sp_account`");

        $rows = mysqli_num_rows($SQL);
        $data = [];
        if ($rows) {
            while ($row = mysqli_fetch_array($SQL)) {
                $data[] = [
                    'name' => $row['name'],
                    'uid' => $row['uid'],
                    'status_cookie' => $row['status_cookie'],
                ];
            }
        }
        mysqli_close($this->conn);
        die(($this->response(200, 'list', ['data' => $data])));
    }

    public function create($cookie, $listUid, $content)
    {
        $json = json_encode([
            'list_uid' => str_replace(['\'', '"', "\n"], ['', '', '[enter]'], $listUid),
            'content' => str_replace(['\'', '"', "\n"], ['', '', '[enter]'], $content)
        ]);

        require_once DOCUMENT_ROOT . '/support/FacebookHelper.php';
        $checkAccount = FacebookHelper::infoByCookie($cookie);
        if (count($checkAccount) === 0) die($this->response(201, 'Cookie không chính xác'));
        $name = html_entity_decode($checkAccount['name']);
        $uid = $checkAccount['uid'];
        $time = date('Y-m-d', time());
        $SQL = mysqli_query($this->conn, "SELECT * FROM  `sp_account` WHERE `uid`='$uid'");
        $find = mysqli_fetch_array($SQL, MYSQLI_ASSOC);
        $id = 0;
        if (is_null($find)) {
            mysqli_query($this->conn, "INSERT INTO `sp_account` (`id`, `cookie`, `name`, `uid`, `status_cookie`, `created_at`, `updated_at`) VALUES (NULL, '$cookie', '$name', '$uid', 'LIVE', '$time', '$time');");
            $id = mysqli_insert_id($this->conn);
        } else {
            $id = $find['id'];
            mysqli_query($this->conn, "UPDATE `sp_account` SET `cookie` = '$cookie',`name`='$name',`status_cookie`='LIVE' WHERE `sp_account`.`id` = $id;");
        }
        $SQL = mysqli_query($this->conn, "SELECT * FROM  `sp_data_account` WHERE `account_id`='$id' AND `type`='COMMENT_GROUP'");
        $find = mysqli_fetch_array($SQL, MYSQLI_ASSOC);
        $json = json_encode([
            'list_uid' => str_replace(['\'', '"', "\n"], ['', '', '[enter]'], $listUid),
            'content' => base64_encode(str_replace(['\'', '"', "\n"], ['', '', '[enter]'], $content))
        ]);


        if (is_null($find)) {
            mysqli_query($this->conn, "INSERT INTO `sp_data_account` (`id`, `account_id`, `data`, `type`, `created_at`, `updated_at`) VALUES (NULL, '$id', '$json', 'COMMENT_GROUP', '$time', '$time');");
        } else {
            mysqli_query($this->conn, "UPDATE `sp_data_account` SET `data`='$json' WHERE `sp_data_account`.`account_id` = $id;");
        }
        mysqli_close($this->conn);
        die($this->response());
    }

    private function response($status = 200, $content = 'thành công', $data = [])
    {
        return json_encode([
            'status' => $status,
            'content' => $content,
            'data' => (object)$data
        ]);
    }


}

$user = new UserController($kunloc);

if (($_SERVER['REQUEST_METHOD']) == "GET") {
    switch ($_REQUEST['type']) {
        case 'index':
            $user->index();
            break;
        default:
            break;
    }
}
if (($_SERVER['REQUEST_METHOD']) == "POST") {
    switch ($_REQUEST['type']) {
        case 'create':
            $user->create($_POST['cookie'], $_POST['list_group'], $_POST['content']);
            break;
        default:
            break;
    }
}