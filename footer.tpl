<!-- BEGIN TEMPLATE footer.tpl -->
    <div id="footer-plug">
      This <a href="http://www.phorum.org/">forum</a>
      is powered by <a href="http://www.phorum.org/">Phorum</a>.
    </div>

  </div> <!-- end of div id="phorum" -->


<script src="{URL->TEMPLATE}/js/jquery.min.js"></script>

<script type="text/javascript">
   var jQNew = $.noConflict(true);

function init() {
    jQNew('.ui-dialog-titlebar-close').click(function() {
        jQNew('.ui-dialog').hide();
    });

    jQNew('.sidebar-page ul .li').each(function() {
        var $that = jQNew(this);
        if ($that.parent().find('ul').length > 0) {
            $that.prepend('<span class="glyphicon glyphicon-chevron-down pull-right"></span>');
        }
    });

    jQNew('.sidebar-page ul .li').click(function() {
        jQNew(this).parent().find('ul').first().slideToggle(300);
    });

//    jQNew('abbr').tooltip({
//        delay: { open: 500, close: 100 }
//    });
}
init();
</script>

<script src="{URL->TEMPLATE}/js/bootstrap.min.js" type="text/javascript"></script>
<script src="{URL->TEMPLATE}/js/script.js" type="text/javascript"></script>

</body>
</html>
<!-- END TEMPLATE footer.tpl -->
