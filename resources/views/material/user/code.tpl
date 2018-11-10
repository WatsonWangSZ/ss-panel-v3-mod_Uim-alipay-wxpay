



{include file='user/main.tpl'}

<main class="content">
    <div class="content-header ui-content-header">
        <div class="container">
            <h1 class="content-heading">充值</h1>


        </div>
    </div>
    <div class="container">
        <section class="content-inner margin-top-no">
            <div class="row">

                <div class="col-lg-12 col-md-12">
                    <div class="card margin-bottom-no">
                        <div class="card-main">
                            <div class="card-inner">
                                <div class="card-inner">
                                    <p class="card-heading">充值步骤：</p>
                                	<!--<p><font color="blue" size="4">本站一经支付，恕不退款。</font></p>
                                    <p><font color="green" size="3">支付完成后请等候5-30秒服务器处理。</font><font color="red" size="4">期间请勿刷新或关闭支付二维码界面！</font></p>
									<p><font color="green" size="3">支付<font color="red" size="5">3分钟后</font>仍未到账，请立刻点击页面右下角的对话按钮，与客服联系。客服一般在线时间：早8-晚12。</font></p>
                                    <p><font color="blue" size="5">充值请点击<a href="http://shop.vhaey.com" target="_blank">此处购买</a>充值码<br>选择陆玖专用，然后选择金额并支付。充值码将发放到邮箱或直接显示<br>然后回到本页面，在下方填入充值码，点击使用即可。<br>有问题加QQ 1220126731</font></p>-->
									<p><span class="icon icon-lg text-white">filter_1</span> 点击<a href="http://shop.vhaey.com" target="_blank">此处购买</a>充值码</p>
                                    <p><span class="icon icon-lg text-white">filter_2</span> 商品分类选择陆玖专用，然后选择金额并支付。注意<font color="red">认真填写邮箱和查看密码</font>。如果因为邮箱填错/不记得密码等问题，概不赔付。</p>
                                    <p><span class="icon icon-lg text-white">filter_3</span> 充值码将发放到邮箱。如果邮箱没有收到，请回到<a href="http://shop.vhaey.com" target="_blank">发卡网站</a>，点击左侧进度查询并使用相关凭证（邮箱，密码）查看。</p>
                                    <p><span class="icon icon-lg text-white">filter_4</span> 然后回到本页面，在下方填入充值码，点击使用即可。</p>
                                    <p><span class="icon icon-lg text-white">filter_5</span> 有问题加QQ 1220126731，QQ只回复充值问题。其他问题直接忽略</p>
                                    <p><i class="icon icon-lg">attach_money</i>当前余额：<font color="red" size="5">{$user->money}</font> 元</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                {if $pmw!=''}
                    <div class="col-lg-12 col-md-12">
                        <div class="card margin-bottom-no">
                            <div class="card-main">
                                <div class="card-inner">
                                    {$pmw}
                                </div>
                            </div>
                        </div>
                    </div>
                {/if}

                <div class="col-lg-12 col-md-12">
                    <div class="card margin-bottom-no">
                        <div class="card-main">
                            <div class="card-inner">
                                <div class="card-inner">
                                    <p class="card-heading">充值码</p>
                                    <div class="form-group form-group-label">
                                        <label class="floating-label" for="code">充值码</label>
                                        <input class="form-control" id="code" type="text">
                                    </div>
                                </div>
                                <div class="card-action">
                                    <div class="card-action-btn pull-left">
                                        <button class="btn btn-flat waves-attach" id="code-update" ><span class="icon">check</span>&nbsp;充值</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-12 col-md-12">
                    <div class="card margin-bottom-no">
                        <div class="card-main">
                            <div class="card-inner">
                                <div class="card-inner">
                                    <div class="card-table">
                                        <div class="table-responsive">
                                            {$codes->render()}
                                            <table class="table table-hover">
                                                <tr>
                                                    <!--<th>ID</th> -->
                                                    <th>代码</th>
                                                    <th>类型</th>
                                                    <th>操作</th>
                                                    <th>使用时间</th>

                                                </tr>
                                                {foreach $codes as $code}
                                                    {if $code->type!=-2}
                                                        <tr>
                                                            <!--	<td>#{$code->id}</td>  -->
                                                            <td>{$code->code}</td>
                                                            {if $code->type==-1}
                                                                <td>金额充值</td>
                                                            {/if}
                                                            {if $code->type==10001}
                                                                <td>流量充值</td>
                                                            {/if}
                                                            {if $code->type==10002}
                                                                <td>用户续期</td>
                                                            {/if}
                                                            {if $code->type>=1&&$code->type<=10000}
                                                                <td>等级续期 - 等级{$code->type}</td>
                                                            {/if}
                                                            {if $code->type==-1}
                                                                <td>充值 {$code->number} 元</td>
                                                            {/if}
                                                            {if $code->type==10001}
                                                                <td>充值 {$code->number} GB 流量</td>
                                                            {/if}
                                                            {if $code->type==10002}
                                                                <td>延长账户有效期 {$code->number} 天</td>
                                                            {/if}
                                                            {if $code->type>=1&&$code->type<=10000}
                                                                <td>延长等级有效期 {$code->number} 天</td>
                                                            {/if}
                                                            <td>{$code->usedatetime}</td>
                                                        </tr>
                                                    {/if}
                                                {/foreach}
                                            </table>
                                            {$codes->render()}
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div aria-hidden="true" class="modal modal-va-middle fade" id="readytopay" role="dialog" tabindex="-1">
                    <div class="modal-dialog modal-xs">
                        <div class="modal-content">
                            <div class="modal-heading">
                                <a class="modal-close" data-dismiss="modal">×</a>
                                <h2 class="modal-title">正在连接支付网关</h2>
                            </div>
                            <div class="modal-inner">
                                <p id="title">感谢您对我们的支持，请耐心等待</p>
                                {if $config["payment_system"] != "trimepay"}
                                <img src="/images/qianbai-2.png" height="200" width="200" />
                                {/if}
                            </div>
                        </div>
                    </div>
                </div>

                {include file='dialog.tpl'}
            </div>
        </section>
    </div>
</main>
<script src="/assets/js/jquery.min.js"></script>
<script src="/assets/js/qrcode.min.js"></script>
<script>
	$(document).ready(function () {
		$("#code-update").click(function () {
			$.ajax({
				type: "POST",
				url: "code",
				dataType: "json",
				data: {
					code: $("#code").val()
				},
				success: function (data) {
					if (data.ret) {
						$("#result").modal();
						$("#msg").html(data.msg);
						window.setTimeout("location.href=window.location.href", {$config['jump_delay']});
					} else {
						$("#result").modal();
						$("#msg").html(data.msg);
						window.setTimeout("location.href=window.location.href", {$config['jump_delay']});
					}
				},
				error: function (jqXHR) {
					$("#result").modal();
					$("#msg").html("发生错误：" + jqXHR.status);
				}
			})
		})
})
</script>






{include file='user/footer.tpl'}
