<?php

require_once '../../../config.php';
require_once '../../config.php';

require_once DOCUMENT_ROOT . '/support/FacebookHelper.php';
require_once DOCUMENT_ROOT . '/support/StrHelper.php';
require_once DOCUMENT_ROOT . '/support/PostService.php';
require_once DOCUMENT_ROOT . '/support/HelperImage.php';

class CronGroupController
{
    public $conn;
    public $account;

    public function __construct($conn)
    {
        $this->conn = $conn;
    }

    public function init()
    {
        $account = $this->findAccount();
        if (count($account) == 0) die($this->response(201, 'Không tìm thấy account'));
        $data = $this->findDataByAccount($account['account_id']);
	
        $findPost = $this->findPost($data['list_group'], $account['cookie'], $account['account_id']);
	
        if ($findPost['status'] != 200) die(json_encode($findPost));
        $postId = $findPost['data']['post_id'];
        $postService = new PostService($postId, $account['cookie']);
        $userPost = $postService->getNamePoster();
        $contents = $data['contents'];
        $str = $contents[array_rand($contents)];
        $content = StrHelper::exportString($str, $userPost['name']);
        $image = new HelperImage();
        $urlImage = $image->getUrlImage($userPost['name']);
        $token = $account['token'];
        FacebookHelper::postToken("https://graph.facebook.com/$postId/comments?method=POST&message=" . urlencode($content) . "&attachment_url=" . urlencode($urlImage) . "&access_token=$token");
        //die($this->response(200, 'comment', ['url' => 'https://facebook.com/' . $postId,'content'=>$content,'url_image'=>$urlImage]));
		echo '<a taget="_blank" href="https://facebook.com/'.$postId.'">'.$postId.'</a> nội dung:'.$content;
		
    }

    public function findPost($groups, $cookie, $accountId)
    {
        $randIndex = array_rand($groups);
        $idGroup = $groups[$randIndex];
		
        $html = FacebookHelper::curlGet("https://mbasic.facebook.com/groups/" . $idGroup, $cookie);
		
        preg_match_all('/id="like_(.*?)">/', $html, $ids);
        if (count($ids) !== 2) return [
            'status' => 201,
            'content' => 'Không tìm thấy bài viết 1',
            'data' => (object)[]
        ];
        $ids = $ids[1];
        $postId = null;
        foreach ($ids as $idPost) {
			
            $SQL = mysqli_query($this->conn, "SELECT * FROM `sp_logs_comment` where `type`='COMMENT_GROUP' AND `account_id`='$accountId' AND `post_id`=$idPost");
            $find = mysqli_fetch_array($SQL, MYSQLI_ASSOC);
			
            if (!is_null($find)) continue;
            mysqli_query($this->conn, "INSERT INTO `sp_logs_comment` (`id`, `account_id`, `post_id`, `type`) VALUES (NULL, '$accountId', '$idPost', 'COMMENT_GROUP');");
            $postId = $idPost;
            break;
        }
        if (is_null($postId)) return [
            'status' => 202,
            'content' => 'Không tìm thấy bài viết',
            'data' => (object)[]
        ];
        return [
            'status' => 200,
            'content' => 'Có bài viết',
            'data' => [
                'post_id' => $postId
            ]
        ];
    }

    private function findDataByAccount($accountId)
    {
        $SQL = mysqli_query($this->conn, "SELECT * FROM `sp_data_account` where `type`='COMMENT_GROUP' AND `account_id`='$accountId'");
        $find = mysqli_fetch_array($SQL, MYSQLI_ASSOC);
        if (is_null($find)) return [];
        $data = json_decode($find['data'], true);
        return [
            'list_group' => explode("[enter]", $data['list_uid']),
            'contents' => explode("|", str_replace("[enter]", "\n", base64_decode($data['content'])))
        ];
    }


    private function response($status = 200, $content = 'thành công', $data = [])
    {
        return json_encode([
            'status' => $status,
            'content' => $content,
            'data' => (object)$data
        ]);
    }

    private function findAccount()
    {
        $SQL = mysqli_query($this->conn, "SELECT * FROM `sp_account` where `status_cookie`='LIVE' ORDER BY RAND() LIMIT 1");
        $find = mysqli_fetch_array($SQL, MYSQLI_ASSOC);
        if (is_null($find) || count($find) === 0) return [];
        $id = $find['id'];
        $account = FacebookHelper::infoByCookie($find['cookie']);
        if (count($account) === 0) {
            mysqli_query($this->conn, "UPDATE `sp_account` SET `status_cookie`='DIE' WHERE `sp_account`.`id` = $id;");
            return $this->findAccount();
        }
        $this->account = $account;
        $account['cookie'] = $find['cookie'];
        $account['account_id'] = $find['id'];
        return $account;
    }
}

$cron = new CronGroupController($kunloc);
$cron->init();