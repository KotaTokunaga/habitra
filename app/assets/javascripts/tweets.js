$(function () {
    //任意のリンクをモーダル内に読み込む
    $("#modalDetails").on("show.bs.modal", function(e) {
        var link = $(e.relatedTarget); //クリックしたセルのオブジェクトデータ
        $(this).find(".modal-content").load(link.attr("data-href"));
    });
});
