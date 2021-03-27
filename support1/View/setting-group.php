
<div class="col-lg-6 pt-4">
    <div class="card bg-secondary">
        <div class="card-header"><b class="header-title text-white font-weight-bold h5"><i
                        class="fa fa-heart"></i> Cấu hình bot bình luận group</b></div>
        <div class="card-body bg-white">
            <div class="form-group">
                <div class="form-group">
                    <label class="font-weight-bold">Cookie:</label>
                    <textarea id="cookie-comment-group" class="form-control"></textarea>
                </div>
                <div class="form-group">
                    <label class="font-bold">Danh sách Id nhóm:</label>
                    <textarea id="list-group-comment-group" class="form-control"></textarea>
                </div>
                <div class="form-group">
                    <label class="font-bold">Nội dung comment:</label>
                    <textarea id="content-comment-group" class="form-control"></textarea>
                </div>
            </div>
            <button id="save-comment-group" type="button" class="btn btn-outline-danger"><i class="fa fa-floppy-o" aria-hidden="true"></i> Lưu</button>
        </div>
    </div>
</div>
<script>
    document.addEventListener("DOMContentLoaded",function (){
        let baseLink = '<?php echo BASE_URL.'/support/Controller/Api';?>';

        $(this).on('click','#save-comment-group',function (){
            let cookie = $("#cookie-comment-group").val().trim();
            let listUid = $("#list-group-comment-group").val().trim();
            let content = $("#content-comment-group").val().trim();

        })
    })
</script>
