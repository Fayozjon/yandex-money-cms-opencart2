<html>
<head>
<style type="text/css">
    /*.button__pay {
        background: #FFDB4D;
        border-radius: 4px;
        height: 64px;
        width: 155px;
        outline: 0px;
        border: 0px;
        transition: 0.1s ease-out 0s all;
    }

    .button__pay:hover {
        background: #ffd633;
        transition: 0.1s ease-out 0s all;
        cursor: pointer;
    }

    .button__pay:active {
        background: #FFcc00;
        cursor: pointer;
    }

    .button__text {
        color: #000;
        font-size: 20px;
        line-height: 26px;
        font-family: YandexSansTextApp-Regular, Arial, Helvetica, sans-serif;
        padding: 0 20px;
        text-align: center;
        transition: 0.3s ease-out 0s all;
        cursor: pointer;
    }

    .button__subtext {
        color: #000;
        font-size: 12px;
        font-family: YandexSansTextApp-Light, Arial, Helvetica, sans-serif;
        padding: 0 20px;
        text-align: center;
        transition: 0.3s ease-out 0s all;
        cursor: pointer;
    }

    .fly {
        box-shadow: 0px 1px 0px 0px rgba(0,0,0,0.12), 0 5px 10px -3px rgba(0, 0, 0, 0.3);;
    }*/
</style>
</head>
<body>
<div>
    <div style="margin:0;padding:0;">
        <table cellpadding="0" cellspacing="0" width="100%" height="auto" style="border-collapse:collapse;">
            <tbody>
            <tr>
                <td bgcolor="#f6f5f3" style="padding:50px;">
                    <table style="border-collapse:collapse;margin-left:auto;margin-right:auto;" cellpadding="0" cellspacing="0" width="610" height="auto" align="center" bgcolor="#ffffff">
                        <tbody>
                        <tr>
                            <td>
                                <table cellpadding="0" cellspacing="0" width="100%" height="auto" style="border-collapse:collapse;">
                                    <tbody>
                                    <tr>
                                        <td style="padding:15px 25px;">
                                            <a href="https://kassa.yandex.ru/?_openstat=mail%3Bmy%3Binvoice_p%3Blogo" target="_blank" style="font-weight:normal;text-decoration:none;cursor:pointer;">
                                                <font color="#4d7fd2" face="Arial" size="3">
                                                    <img src="https://money.yandex.ru/i/html-letters/header__logo_theme_office.png" width="143" height="38" alt="Яндекс.Касса" title="Яндекс.Касса" style="border:0;vertical-align:middle;">
                                                </font>
                                            </a>
                                        </td>
                                        <?php if ($b_logo===true && !empty($shop_logo)){ ?>
                                        <td style="padding:15px 25px;" align="right">
                                            <a href="<?php echo $shop_url; ?>" target="_blank" style="font-weight:normal;text-decoration:none;cursor:pointer;">
                                                <font color="#4d7fd2" face="Arial" size="3">
                                                    <img src="<?php echo $shop_logo; ?>" width="143" height="38" alt="<?php echo $shop_name; ?>" title="<?php echo $shop_name; ?>" style="border:0;vertical-align:middle;">
                                                </font>
                                            </a>
                                        </td>
                                        <?php } ?>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <hr size="1" color="#e1dbdb" style="margin:0;">
                            </td>
                        </tr>
                        <tr>
                            <td style="padding:30px 25px 20px 25px;">
                                <h1 style="line-height:normal;padding:0;margin:0;margin-bottom:20px;margin-bottom:24px;font-weight:normal;">
                                    <font size="5" color="#000000" face="Arial"> К оплате <?php echo $sum; ?> руб. </font>
                                </h1>
                                <p style="font-weight:normal;line-height:21px;padding:0;margin:0;margin-bottom:15px;">
                                    <font color="#000000" face="Arial" size="3"> Здравствуйте, <font style="font-weight:bold;" color="#000000" face="Arial" size="3"><?php echo $customer_name; ?></font>. </font>
                                </p>
                                <p style="font-weight:normal;line-height:21px;padding:0;margin:0;margin-bottom:15px;">
                                    <font color="#000000" face="Arial" size="3">
                                        Магазин <?php echo $shop_name; ?> благодарит вас за заказ и просит оплатить счет №&nbsp;<?php echo $order_id; ?>.
                                    </font>
                                </p>
                                <div>
                                    <img src="https://money.yandex.ru/i/html-letters/margin-block.png" width="100%" height="13" style="border:0;background:#ffffff;">
                                </div>
                                <h2 style="font-weight:normal;line-height:normal;padding:0;margin:0;margin-bottom:10px;font-weight:bold;">
                                    <font size="4" color="#000000" face="Arial">В вашем заказе</font>
                                </h2>
                                <table style="margin:0;padding:0;width:100%;">
                                    <tbody>
                                    <!-- -->
                                    <?php foreach ($products as $product){ ?>
                                    <tr>
                                        <td style="width:70%;">
                                            <div style="line-height:20px;vertical-align:top;">
                                                <font style="background-color:#fff;" color="#000000" face="Arial" size="3"><?php echo $product['name']; ?>&nbsp;</font>
                                            </div>
                                        </td>
                                        <td>
                                            <div>
                                            </div>
                                        </td>
                                        <td valign="top">
                                            <font color="#000000" face="Arial" size="3"><?php echo $product['quantity']; ?>&nbsp;x&nbsp;<?php echo number_format($product['price'],2,'.',''); ?>&nbsp;руб.</font>
                                        </td>
                                    </tr>
                                    <?php } ?>
                                    <!-- -->
                                    <tr>
                                        <td>
                                            <div>
                                                <img src="https://money.yandex.ru/i/html-letters/margin-block.png" width="100%" height="10" style="border:0;background:#ffffff;">
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                                <table style="margin:0;padding:0;width:100%;">
                                    <tbody>
                                    <tr>
                                        <td style="width:70%;">
                                            <div style="line-height:20px;vertical-align:top;">
                                                <font style="background-color:#fff;font-weight:bold;" color="#000000" face="Arial" size="3">К оплате&nbsp;</font>
                                            </div>
                                        </td>
                                        <td>
                                            <div>
                                            </div>
                                        </td>
                                        <td valign="top">
                                            <font style="font-weight:bold;" color="#000000" face="Arial" size="3"><?php echo $sum; ?>&nbsp;руб.</font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div>
                                                <img src="https://money.yandex.ru/i/html-letters/margin-block.png" width="100%" height="25" style="border:0;background:#ffffff;">
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                                <?php if (!empty($instruction)){ ?>
                                <div>
                                    <p><?php echo $instruction; ?></p>
                                </div>
                                <?php } ?>
                                <div>
                                    <img src="https://money.yandex.ru/i/html-letters/margin-block.png" width="100%" height="25" style="border:0;background:#ffffff;">
                                </div>
                                <!--<h2 style="font-weight:normal;line-height:normal;padding:0;margin:0;margin-bottom:10px;margin-bottom:16px;font-weight:bold;">
                                    <font size="4" color="#000000" face="Arial">Выберите удобный способ оплаты</font>
                                </h2>-->
                                <table cellpadding="0" cellspacing="0" width="100%" height="auto" style="border-collapse:collapse;">
                                    <tbody>
                                    <tr>
                                        <td style="padding-bottom:16px;">
                                            <!-- -->
                                            <table border="0" cellspacing="1" align="center"  width = "80%">
                                                <tr>
                                                    <td align="center">
                                                        <!--<form action="<?php echo $link; ?>" method="GET">
                                                            <button class="" style="{background: #FFDB4D; border-radius: 4px;height: 64px;width: 155px;outline: 0px;border: 0px;transition: 0.1s ease-out 0s all;}:active {background: #FFcc00; cursor: pointer;} :hover {background: #ffd633; transition: 0.1s ease-out 0s all; cursor: pointer;}">
                                                                <span class="" style="color: #000;font-size: 20px;line-height: 26px;font-family: YandexSansTextApp-Regular, Arial, Helvetica, sans-serif;padding: 0 20px;text-align: center;transition: 0.3s ease-out 0s all;cursor: pointer;">Заплатить</span><br/>
                                                                <span class="" style="color: #000;font-size: 12px;font-family: YandexSansTextApp-Light, Arial, Helvetica, sans-serif;padding: 0 20px;text-align: center;transition: 0.3s ease-out 0s all;cursor: pointer;">через Яндекс</span>
                                                            </button>-->
                                                            <div style="
  text-align: center;
  background: #FFDB4D;
  border-radius: 4px;
  height: 64px;
  width: 155px;
  outline: 0;
  border: 0;
  transition: 0.1s ease-out 0s all;
  cursor: pointer;
 :hover {
  background: #ffd633;
  transition: 0.1s ease-out 0s all;
  cursor: pointer;
}:active {
  background: #FFcc00;
  cursor: pointer;
}" class="yamoney-pay-button yamoney-pay-button_type_fly">
                                                                <a href="<?php echo $link; ?>"
                                                                    style="background: #FFDB4D;
                                                                    text-decoration: none;
  border-radius: 4px;
  display: block;
  height: 64px;
  width: 155px;
  position: relative;
  opacity: 0;
  z-index: 2;
  outline: 0;
  border: 0;
  transition: 0.1s ease-out 0s all;
  cursor: pointer;" type="submit" class="yamoney-pay-button__pay">
                                                                <span style="
  position: relative;
  left: 0px;
  top: -53px;
  color: #000;
  font-size: 20px;
  line-height: 26px;
  font-family: YandexSansTextApp-Regular, Arial, Helvetica, sans-serif;
  text-align: center;
  cursor: pointer;
  z-index: 1;
" class="yamoney-pay-button__text">Заплатить</span><br/>
                                                                <span style="
  position: relative;
  left: 0px;
  top: -55px;
  color: #000;
  font-size: 12px;
  font-family: YandexSansTextApp-Light, Arial, Helvetica, sans-serif;
  padding: 0px 20px;
  text-align: center;
  cursor: pointer;
  z-index: 1;
" class="yamoney-pay-button__subtext">через Яндекс</span></a>
                                                            </div>
                                                        <!--</form>-->
                                                    </td>
                                                </tr>
                                            </table>

                                            <!-- -->
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                                <div>
                                    <img src="https://money.yandex.ru/i/html-letters/margin-block.png" width="100%" height="45" style="border:0;background:#ffffff;">
                                </div>
                                <table cellpadding="0" cellspacing="0" width="100%" height="auto" style="border-collapse:collapse;">
                                    <tbody>
                                    <tr>
                                        <td>
                                            <span>
                                            <font color="#999999" size="2" face="Arial">Счет выставлен через <a href="https://github.com/yandex-money/yandex-money-cms-opencart2" target="_blank" style="font-weight:normal;text-decoration:none;cursor:pointer;">
                                                    <font color="#666699" size="2" face="Arial">модуль Y.CMS</font>
                                                </a>
                                            </font>
                                            </span>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <table style="border-collapse:collapse;margin-left:auto;margin-right:auto;" cellpadding="0" cellspacing="0" width="100%" height="auto">
                        <tbody>
                        <tr>
                            <td>
                                <table width="610" align="center" cellpadding="0" cellspacing="0" height="auto" style="border-collapse:collapse;">
                                    <tbody>
                                    <tr>
                                        <td style="padding-top:20px;padding-bottom:5px;padding-left:25px;padding-right:25px;">
                                            <!--<font color="#999999" size="2" face="Arial">
                                                Если у вас возникли проблемы с платежом, обратитесь в
                                                <a href="" target="_blank" style="font-weight:normal;text-decoration:none;cursor:pointer;">
                                                    <font color="#666699" size="2" face="Arial">службу поддержки магазина</font>
                                                </a>.
                                            </font>-->
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>