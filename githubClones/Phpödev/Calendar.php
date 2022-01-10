<?php
include "top.php";
include "top.menu.php";
$db = new PDO('mysql:host=localhost;dbname=website;charset=utf8', 'root', 'MYas2240.');
$datas = $db->query("SELECT `Name`, `GelisTarihi` FROM `gelecekoyunlar`");
$i = 0;
while ($data = $datas->fetch(PDO::FETCH_ASSOC)) {
    $veri[$i]['Name'] = $data['Name'];
    $veri[$i]['Gelis'] = $data['GelisTarihi'];
    $i++;
}

?>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Gelecek Oyunlar</h1>
                </div>
            </div>
        </div>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <!-- /.col -->
                <div class="col-md-12">
                    <div class="card card-primary">
                        <div class="card-body p-0">
                            <div id="calendar"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>
</div>
<?php
include "bottom.php";
?>

<script>
    $(function() {
        function ini_events(ele) {
            ele.each(function() {
                var eventObject = {
                    title: $.trim($(this).text()),
                    color: $(this).data('color')
                }
                $(this).data('eventObject', eventObject)
                $(this).draggable({
                    zIndex: 1070,
                    revert: true,
                    revertDuration: 0,
                })
            })
        }

        var Calendar = FullCalendar.Calendar;
        var Draggable = FullCalendar.Draggable;
        var calendarEl = document.getElementById('calendar');



        var calendar = new Calendar(calendarEl, {
            locale: 'tr',
            initialView: 'dayGridMonth',
            firstDay: '1',
            headerToolbar: {
                left: 'prev,next today',
                center: 'title',
                right: 'dayGridMonth,timeGridWeek'
            },
            themeSystem: 'bootstrap',
            selectable: true,
            editable: true,
            events: [<?php
                foreach ($veri as $v){ 
                    ?>
                {
                    title: '<?= $v['Name'] ?>',
                    start: '<?= $v['Gelis']?>',
                    end:'<?= $v['Gelis']?>',
                    color:'blue',
                },
            <?php
                }
            ?>],
        })
        calendar.render();
    })
</script>
<?php
include "bottom_footer.php";
?>