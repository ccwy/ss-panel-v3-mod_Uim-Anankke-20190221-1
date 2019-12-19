


{include file='user/main.tpl'}







	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">创建工单</h1>
			</div>
		</div>
		<div class="container">
			<div class="col-lg-12 col-sm-12">
				<section class="content-inner margin-top-no">
					
					<div class="card">
						<div class="card-main">
							<div class="card-inner">
								<div class="form-group form-group-label">
									<label class="floating-label" for="title">标题</label>
									<input class="form-control maxwidth-edit" id="title" type="text" >
								</div>
								
								
							</div>
						</div>
					</div>
					
					<div class="card">
						<div class="card-main">
							<div class="card-inner">
								<div class="form-group form-group-label">
									<label class="floating-label" for="content">内容</label>
									<link rel="stylesheet" href="/theme/material/editormd/lib/editormd.min.css" />
									<!--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/editor.md@1.5.0/css/editormd.min.css" /> -->
									<div id="editormd">
										<textarea style="display:none;" id="content"></textarea>
									</div>
								</div>
								
								
								
								
							</div>
						</div>
					</div>
					
					
					
					<div class="card">
						<div class="card-main">
							<div class="card-inner">
								
								<div class="form-group">
									<div class="row">
										<div class="col-md-10 col-md-push-1">
											<button id="submit" type="submit" class="btn btn-block btn-brand">提交</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					{include file='dialog.tpl'}

							
			</div>
			
			
			
		</div>
	</main>






{include file='user/footer.tpl'}


<!--<script src="https://cdn.jsdelivr.net/npm/editor.md@1.5.0/editormd.min.js"></script> -->
 <script src="/theme/material/editormd//lib/editormd.min.js"></script>
<script>

var wait=60;
function time(o) {
		if (wait == 0) {
			o.removeAttr("disabled");
			o.text("提交");
			wait = 60;
		} else {
			o.attr("disabled","disabled");
			o.text("提交(" + wait + ")");
			wait--;
			setTimeout(function() {
				time(o)
			},
			1000)
		}
	}

    $(document).ready(function () {
	
	function submit() {
		time($("#submit"));
			$("#result").modal();
            $("#msg").html("正在提交。");
            $.ajax({
                type: "POST",
                url: "/user/ticket",
                dataType: "json",
                data: {
                    content: editor.getHTML(),
					title: $("#title").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
                        $("#msg").html(data.msg);
                        window.setTimeout("location.href='/user/ticket'", {$config['jump_delay']});
                    } else {
                        $("#result").modal();
                        $("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#msg-error").hide(10);
                    $("#msg-error").show(100);
                    $("#msg-error-p").html("发生错误：" + jqXHR.status);
                }
            });
        }
		
        $("#submit").click(function () {
            submit();
        });
    });
	
    $(function() {
        editor = editormd("editormd", {
            path : "/theme/material/editormd/lib/", // Autoload modules mode, codemirror, marked... dependents libs path 
	     <!-- path : "https://cdn.jsdelivr.net/npm/editor.md@1.5.0/lib/", // Autoload modules mode, codemirror, marked... dependents libs path-->
			height: 720,
			saveHTMLToTextarea : true,
			emoji : true
        });

        /*
        // or
        var editor = editormd({
            id   : "editormd",
            path : "../lib/"
        });
        */
    });
</script>






