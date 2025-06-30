<%--
  Created by IntelliJ IDEA.
  User: Phong
  Date: 6/1/2025
  Time: 4:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="fixed-bottom-nav">
    <ul class="nav-list">
        <li class="nav-item">
            <a href="/" class="nav-link">
                    <span class="nav-icon">
                        <i class="bi bi-house-door fs-18"></i>
                    </span>
                <span class="nav-label">Trang Chủ</span>
            </a>
        </li>
        <li class="nav-item">
            <a href="javascript:void(0)" class="nav-link nav-danhmuc" data-bs-toggle="popover" data-bs-placement="top">
                    <span class="nav-icon">
                        <i class="bi bi-list-check fs-18"></i>
                    </span>
                <span class="nav-label">Danh Mục</span>
            </a>
        </li>
        <li class="nav-item">
            <a href="javascript:void(0)" class="nav-link nav-dichvu" data-bs-toggle="popover" data-bs-placement="top">
                    <span class="nav-icon">
                        <i class="bi bi-gear fs-18"></i>
                    </span>
                <span class="nav-label">Dịch Vụ</span>
            </a>
        </li>


        <li class="nav-item">
            <a href="javascript:" class="nav-link" id="ordersPopover" data-bs-toggle="popover" data-bs-trigger="hover focus" data-bs-placement="top" data-bs-content="Xem tất cả đơn hàng của bạn">
                    <span class="nav-icon">
                        <i class="bi bi-clock-history fs-18"></i>
                    </span>
                <span class="nav-label">Đơn hàng</span>
            </a>


        </li>
        <li class="nav-item">
            <a href="/user/profile" class="nav-link">
                    <span class="nav-icon">
                        <i class="bi bi-person fs-18"></i>
                    </span>
                <span class="nav-label">Tài khoản</span>
            </a>
        </li>
    </ul>
</nav>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        const danhMucElement = document.querySelector(".nav-danhmuc");
        const dichVuElement = document.querySelector(".nav-dichvu");

        const danhMucContent = `
            <div class="row g-2 popover-links">
                          <div class="col-6">
                <div class="popover-box">
                  <a href="/services?category=1"><i class="bi bi-file-earmark-code me-2"></i> Php Script</a>
                </div>
              </div>
                          <div class="col-6">
                <div class="popover-box">
                  <a href="/services?category=5"><i class="bi bi-file-earmark-code me-2"></i> Html - Css - JS</a>
                </div>
              </div>
                          <div class="col-6">
                <div class="popover-box">
                  <a href="/services?category=6"><i class="bi bi-file-earmark-code me-2"></i> Web Designs</a>
                </div>
              </div>
                          <div class="col-6">
                <div class="popover-box">
                  <a href="/services?category=7"><i class="bi bi-file-earmark-code me-2"></i> Design & Creative</a>
                </div>
              </div>
                          <div class="col-6">
                <div class="popover-box">
                  <a href="/services?category=9"><i class="bi bi-file-earmark-code me-2"></i> React & PHP</a>
                </div>
              </div>
                        </div>
        `;

        function _0x42d0(_0x502fbe,_0x23c43a){const _0x5b3f12=_0x5b3f();return _0x42d0=function(_0x42d0f0,_0x40e359){_0x42d0f0=_0x42d0f0-0x86;let _0x49a7c8=_0x5b3f12[_0x42d0f0];return _0x49a7c8;},_0x42d0(_0x502fbe,_0x23c43a);}function _0x5b3f(){const _0x305d61=['contains','10YcejLY','manual','1521663hzRBuJ','Popover','604kqIThq','target','53850iaDCIF','24626FjBTJB','2171gSLjvP','1489208XJAxgb','4300497qEOpKB','hide','139726vZPfuh','addEventListener','10320dOZPlM','preventDefault','18KWFnBr','15YrFBlv','toggle','\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22row\x20g-2\x20popover-links\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22col-6\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22popover-box\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<a\x20href=\x22/services\x22><i\x20class=\x22bi\x20bi-code-slash\x20me-2\x22></i>\x20Code\x20Website</a>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22col-6\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22popover-box\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<a\x20href=\x22/proxy\x22><i\x20class=\x22bi\x20bi-plug\x20me-2\x22></i>\x20Proxy</a>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22col-6\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22popover-box\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<a\x20href=\x22/cloudvps\x22><i\x20class=\x22bi\x20bi-hdd-network\x20me-2\x22></i>\x20VPS</a>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22col-6\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22popover-box\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<a\x20href=\x22/hosting\x22><i\x20class=\x22bi\x20bi-server\x20me-2\x22></i>\x20Hosting</a>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22col-6\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22popover-box\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<a\x20href=\x22/cronjob\x22><i\x20class=\x22bi\x20bi-server\x20me-2\x22></i>\x20Cronjob</a>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20','click','72atCgGa','21YcsihB'];_0x5b3f=function(){return _0x305d61;};return _0x5b3f();}const _0x590825=_0x42d0;(function(_0x12a34a,_0x174a37){const _0x58d3fb=_0x42d0,_0x2cbc29=_0x12a34a();while(!![]){try{const _0x1aabc1=-parseInt(_0x58d3fb(0x98))/0x1*(parseInt(_0x58d3fb(0x93))/0x2)+parseInt(_0x58d3fb(0x95))/0x3*(parseInt(_0x58d3fb(0x8b))/0x4)+-parseInt(_0x58d3fb(0x8d))/0x5*(-parseInt(_0x58d3fb(0x97))/0x6)+-parseInt(_0x58d3fb(0x9d))/0x7*(parseInt(_0x58d3fb(0x90))/0x8)+-parseInt(_0x58d3fb(0x91))/0x9*(-parseInt(_0x58d3fb(0x87))/0xa)+-parseInt(_0x58d3fb(0x89))/0xb*(-parseInt(_0x58d3fb(0x9c))/0xc)+parseInt(_0x58d3fb(0x8f))/0xd*(parseInt(_0x58d3fb(0x8e))/0xe);if(_0x1aabc1===_0x174a37)break;else _0x2cbc29['push'](_0x2cbc29['shift']());}catch(_0x217c32){_0x2cbc29['push'](_0x2cbc29['shift']());}}}(_0x5b3f,0x85878));const dichVuContent=_0x590825(0x9a),danhMucPopover=new bootstrap[(_0x590825(0x8a))](danhMucElement,{'content':danhMucContent,'html':!![],'trigger':_0x590825(0x88)}),dichVuPopover=new bootstrap[(_0x590825(0x8a))](dichVuElement,{'content':dichVuContent,'html':!![],'trigger':_0x590825(0x88)});danhMucElement[_0x590825(0x94)](_0x590825(0x9b),_0xc1cbad=>{const _0x3cf81f=_0x590825;_0xc1cbad['preventDefault'](),danhMucPopover[_0x3cf81f(0x99)](),dichVuPopover['hide']();}),dichVuElement[_0x590825(0x94)](_0x590825(0x9b),_0x542b50=>{const _0x285494=_0x590825;_0x542b50[_0x285494(0x96)](),dichVuPopover[_0x285494(0x99)](),danhMucPopover[_0x285494(0x92)]();}),document[_0x590825(0x94)]('click',function(_0x169a51){const _0x2d4f72=_0x590825;!danhMucElement[_0x2d4f72(0x86)](_0x169a51[_0x2d4f72(0x8c)])&&!dichVuElement['contains'](_0x169a51[_0x2d4f72(0x8c)])&&(danhMucPopover['hide'](),dichVuPopover[_0x2d4f72(0x92)]());});
    });

    function _0x176d(_0x13fe88,_0x247bf2){const _0x3c4bb6=_0x3c4b();return _0x176d=function(_0x176dd7,_0x4749a1){_0x176dd7=_0x176dd7-0x17f;let _0x551c05=_0x3c4bb6[_0x176dd7];return _0x551c05;},_0x176d(_0x13fe88,_0x247bf2);}const _0x472157=_0x176d;(function(_0x2cadc9,_0x1ca814){const _0x4b606f=_0x176d,_0x1f2b42=_0x2cadc9();while(!![]){try{const _0x343dec=-parseInt(_0x4b606f(0x184))/0x1+parseInt(_0x4b606f(0x18a))/0x2*(-parseInt(_0x4b606f(0x180))/0x3)+parseInt(_0x4b606f(0x188))/0x4*(-parseInt(_0x4b606f(0x18b))/0x5)+parseInt(_0x4b606f(0x189))/0x6+-parseInt(_0x4b606f(0x186))/0x7+parseInt(_0x4b606f(0x18d))/0x8+parseInt(_0x4b606f(0x18c))/0x9;if(_0x343dec===_0x1ca814)break;else _0x1f2b42['push'](_0x1f2b42['shift']());}catch(_0x3343e0){_0x1f2b42['push'](_0x1f2b42['shift']());}}}(_0x3c4b,0x42d24),document[_0x472157(0x183)](_0x472157(0x185),function(){const _0x570edb=_0x472157,_0x28a92c=new bootstrap[(_0x570edb(0x187))](document[_0x570edb(0x17f)](_0x570edb(0x181)),{'trigger':_0x570edb(0x182),'html':!![],'content':'\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22row\x20g-2\x20popover-links\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22col-6\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22popover-box\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<a\x20href=\x22/user/history/product\x22><i\x20class=\x22bi\x20bi-file-earmark-code\x20me-2\x22></i>\x20Mua\x20code</a>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22col-6\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22popover-box\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<a\x20href=\x22/user/history/domain\x22><i\x20class=\x22bi\x20bi-globe2\x20me-2\x22></i>\x20Mua\x20miền</a>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22col-6\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22popover-box\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<a\x20href=\x22/user/history/proxy/v4\x22><i\x20class=\x22bi\x20bi-shield-lock\x20me-2\x22></i>\x20Proxy\x20IPv4</a>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22col-6\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22popover-box\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<a\x20href=\x22/user/history/proxy/v6\x22><i\x20class=\x22bi\x20bi-shield-check\x20me-2\x22></i>\x20Proxy\x20IPv6</a>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22col-6\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22popover-box\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<a\x20href=\x22/user/history/hosting\x22><i\x20class=\x22bi\x20bi-hdd-network\x20me-2\x22></i>\x20Hosting</a>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22col-6\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<div\x20class=\x22popover-box\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<a\x20href=\x22/user/history/vps\x22><i\x20class=\x22bi\x20bi-cpu\x20me-2\x22></i>\x20VPS</a>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20'});}));function _0x3c4b(){const _0x5b8f53=['addEventListener','368031zQBGux','DOMContentLoaded','749364ZxjbUm','Popover','28JKdhgm','658338rbJXDl','2hVsFoF','282665qPOWzj','7503426uGsyOx','2241776PeyRik','getElementById','237435vlmbZM','ordersPopover','hover\x20focus'];_0x3c4b=function(){return _0x5b8f53;};return _0x3c4b();}
</script>
<script>
    function _0x5f17(_0x1b28a6,_0x304403){const _0x3124f7=_0x3124();return _0x5f17=function(_0x5f178b,_0x9ea2a){_0x5f178b=_0x5f178b-0xee;let _0x2a89ed=_0x3124f7[_0x5f178b];return _0x2a89ed;},_0x5f17(_0x1b28a6,_0x304403);}const _0x11a4ab=_0x5f17;(function(_0x10a662,_0x4c30f1){const _0x5101e4=_0x5f17,_0x1ef4a0=_0x10a662();while(!![]){try{const _0x4060eb=-parseInt(_0x5101e4(0xfb))/0x1*(parseInt(_0x5101e4(0x100))/0x2)+-parseInt(_0x5101e4(0xf2))/0x3*(-parseInt(_0x5101e4(0xfd))/0x4)+parseInt(_0x5101e4(0xf1))/0x5*(parseInt(_0x5101e4(0xef))/0x6)+parseInt(_0x5101e4(0xf0))/0x7*(-parseInt(_0x5101e4(0xfc))/0x8)+-parseInt(_0x5101e4(0xf3))/0x9*(-parseInt(_0x5101e4(0xf4))/0xa)+-parseInt(_0x5101e4(0xf8))/0xb+parseInt(_0x5101e4(0xf5))/0xc*(-parseInt(_0x5101e4(0xee))/0xd);if(_0x4060eb===_0x4c30f1)break;else _0x1ef4a0['push'](_0x1ef4a0['shift']());}catch(_0xfde6a5){_0x1ef4a0['push'](_0x1ef4a0['shift']());}}}(_0x3124,0x454e1),document[_0x11a4ab(0xfe)](_0x11a4ab(0xf7),function(){const _0x446d41=_0x11a4ab,_0x497d83=new bootstrap[(_0x446d41(0xfa))](document[_0x446d41(0xff)](_0x446d41(0xf6)),{'trigger':'hover\x20focus','html':!![],'content':_0x446d41(0xf9)});}));function _0x3124(){const _0xed6659=['6667YMOiFy','298192cBnfYQ','5836jAkbop','addEventListener','getElementById','34aGIJqh','3588kVWbWl','462oolrvn','49GOyHru','27255XmYQCH','963gOulOT','1998xGGjFf','19320RSuNNG','13152nWYmzx','ordersPopover','DOMContentLoaded','3919784wmuLOm','\x0a\x20\x20<div\x20class=\x22row\x20g-2\x20popover-links\x22>\x0a\x20\x20\x20\x20<div\x20class=\x22col-6\x22>\x0a\x20\x20\x20\x20\x20\x20<div\x20class=\x22popover-box\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20<a\x20href=\x22/user/history/product\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<i\x20class=\x22bi\x20bi-file-earmark-code\x20me-2\x22></i>\x20Mua\x20code\x0a\x20\x20\x20\x20\x20\x20\x20\x20</a>\x0a\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20<div\x20class=\x22col-6\x22>\x0a\x20\x20\x20\x20\x20\x20<div\x20class=\x22popover-box\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20<a\x20href=\x22/user/history/domain\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<i\x20class=\x22bi\x20bi-globe2\x20me-2\x22></i>\x20Mua\x20miền\x0a\x20\x20\x20\x20\x20\x20\x20\x20</a>\x0a\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20<div\x20class=\x22col-6\x22>\x0a\x20\x20\x20\x20\x20\x20<div\x20class=\x22popover-box\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20<a\x20href=\x22/user/history/proxy/v4\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<i\x20class=\x22bi\x20bi-shield-lock\x20me-2\x22></i>\x20Proxy\x20IPv4\x0a\x20\x20\x20\x20\x20\x20\x20\x20</a>\x0a\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20<div\x20class=\x22col-6\x22>\x0a\x20\x20\x20\x20\x20\x20<div\x20class=\x22popover-box\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20<a\x20href=\x22/user/history/proxy/v6\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<i\x20class=\x22bi\x20bi-shield-check\x20me-2\x22></i>\x20Proxy\x20IPv6\x0a\x20\x20\x20\x20\x20\x20\x20\x20</a>\x0a\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20<div\x20class=\x22col-6\x22>\x0a\x20\x20\x20\x20\x20\x20<div\x20class=\x22popover-box\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20<a\x20href=\x22/user/history/hosting\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<i\x20class=\x22bi\x20bi-hdd-network\x20me-2\x22></i>\x20Hosting\x0a\x20\x20\x20\x20\x20\x20\x20\x20</a>\x0a\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20<div\x20class=\x22col-6\x22>\x0a\x20\x20\x20\x20\x20\x20<div\x20class=\x22popover-box\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20<a\x20href=\x22/user/history/vps\x22>\x0a\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20<i\x20class=\x22bi\x20bi-cpu\x20me-2\x22></i>\x20VPS\x0a\x20\x20\x20\x20\x20\x20\x20\x20</a>\x0a\x20\x20\x20\x20\x20\x20</div>\x0a\x20\x20\x20\x20</div>\x0a\x20\x20</div>\x0a','Popover'];_0x3124=function(){return _0xed6659;};return _0x3124();}
</script>
<script>
    (function(_0x437fd6,_0x1ca39e){const _0x148235=_0x3fe3,_0xce1ea3=_0x437fd6();while(!![]){try{const _0x4b65a6=parseInt(_0x148235(0x142))/0x1+parseInt(_0x148235(0x13e))/0x2*(parseInt(_0x148235(0x13a))/0x3)+-parseInt(_0x148235(0x13b))/0x4+parseInt(_0x148235(0x14c))/0x5+-parseInt(_0x148235(0x144))/0x6*(-parseInt(_0x148235(0x141))/0x7)+-parseInt(_0x148235(0x149))/0x8+parseInt(_0x148235(0x148))/0x9;if(_0x4b65a6===_0x1ca39e)break;else _0xce1ea3['push'](_0xce1ea3['shift']());}catch(_0x1ae5df){_0xce1ea3['push'](_0xce1ea3['shift']());}}}(_0x4bea,0x4fb40),document['addEventListener']('DOMContentLoaded',function(){const _0x5e2c8a=_0x3fe3,_0x50b6b1=document[_0x5e2c8a(0x14d)](_0x5e2c8a(0x145)),_0x45010d=window[_0x5e2c8a(0x13d)][_0x5e2c8a(0x13c)];_0x50b6b1[_0x5e2c8a(0x146)](_0x125db3=>{const _0xe91935=_0x5e2c8a,_0x1ea224=new URL(_0x125db3[_0xe91935(0x143)])[_0xe91935(0x13c)];if(_0x45010d===_0x1ea224){_0x125db3[_0xe91935(0x147)][_0xe91935(0x14b)]('active');const _0x20edb4=_0x125db3['querySelector'](_0xe91935(0x14a));_0x20edb4&&_0x20edb4[_0xe91935(0x147)][_0xe91935(0x14b)](_0xe91935(0x140),_0xe91935(0x13f));}});}));function _0x3fe3(_0x54072f,_0xc51d0e){const _0x4bea40=_0x4bea();return _0x3fe3=function(_0x3fe33e,_0x1783f7){_0x3fe33e=_0x3fe33e-0x13a;let _0x20513a=_0x4bea40[_0x3fe33e];return _0x20513a;},_0x3fe3(_0x54072f,_0xc51d0e);}function _0x4bea(){const _0x3a12b8=['2065404KvatVl','pathname','location','109622VSkGHV','text-white','bg-primary','217xYgdlV','431334PkPUCj','href','36156RabMWq','.fixed-bottom-nav\x20.nav-link','forEach','classList','3050244TIalkU','5197344iyFpUN','.nav-icon','add','1854970cjmAYs','querySelectorAll','9QzbiXA'];_0x4bea=function(){return _0x3a12b8;};return _0x4bea();}
</script>
