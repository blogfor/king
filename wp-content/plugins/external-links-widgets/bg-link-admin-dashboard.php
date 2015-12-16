<?php
 global $wpdb;
 
 if(isset($_REQUEST['bg_links']) && isset($_REQUEST['d']))
 {
     $wpdb->query('DELETE FROM '.BG_LINK_TABLE.' WHERE id='.$_REQUEST['d']);
      $msg='Link has been deleted.';
 }
 
if(isset($_POST) && isset($_POST['link_title']))
{
    $wpdb->insert( BG_LINK_TABLE, array( 
				'title' => trim($_POST['link_title']),
				'link' => trim($_POST['link']),
                                'reltag' =>  trim($_POST['followtag'])), array( 
				'%s', '%s','%d') );
    
    
    $msg='Link has been added.';
    
}

?>
<div>
	<h3> External Links Management <span style="color: gray;"><?php echo BG_LINK_VERSION_DISP;?></span> </h3>
        
        <style>
            .notify {
    background-color:#e3f7fc; 
    color:#555; 
    border:.1em solid;
    border-color: #8ed9f6;
    border-radius:10px;
    font-family:Tahoma,Geneva,Arial,sans-serif;
    font-size:1.1em;
    padding:10px 10px 10px 10px;
    margin:10px;
    cursor: default;
}

.notify-yellow { background: #fff8c4; border-color: #f7deae; }
.notify-red { background: #ffecec; border-color: #fad9d7; }
.notify-green { background: #e9ffd9; border-color: #D1FAB6; }
        </style>    
        <?php  
        if(isset($msg)) { ?>
        <div class="notify notify-green"><?php echo $msg;?></div>
        <?php
        
        }
         ?>       
        <style>
             .form{ 
    max-width: 65%; 
    min-width: 28%; 
    border-width: 2px; 
    border-color: #CCCCCC; 
    border-radius: 5px; 
    border-style: groove; 
    color: #222222; 
    font-size: 13px; 
    margin: 0px; 
    background-color: #FFFFFF; 
    padding: 7px; 
} 
.content{ 
    margin: 0px; 
} 
.form label{ 
    color: #222222; 
    font-size: 16px; 
    display: block; 
} 
.form input[type=radio], input[type=checkbox]{ 
    margin: 10px; 
    width: 13px; 
} 
.form div{ 
    display: block; 
} 
.form input, form textarea, form select{ 
    border-width: 2px; 
    border-style: solid; 
    border-color: #666666; 
    border-radius: 5px; 
    padding: 5px; 
    width: 100%; 
} 
.form, .form h1, .form h2{ 
    font-family: 'Verdana'; 
} 
.form h1{ 
    font-size: 28px; 
    color: #607A75; 
    padding: 6px; 
    margin: 0px; 
    margin-bottom: 17px; 
    border-bottom-style: dotted; 
    border-bottom-color: #CCCCCC; 
    border-bottom-width: 3px; 
    border-radius: 0px; 
    background-color: #FFFFFF; 
} 
.intro{ 
    margin-bottom: 10px; 
} 
.clear{ 
    clear: both; 
} 
.form textarea{ 
    height: 52px; 
    width: 100%; 
} 
.form input[type=submit]{ 
    width: 22%; 
    background-color: #1E8CBE; 
    color: #FFFFFF; 
} 
.field{ 
    margin-bottom: 17px; 
} 

        </style>
<form id="form" class="form" name="form" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
    <h1>Add External Link</h1>
    <div class="content">
        <div class="intro"><p>Use the following form to add external links with rel tag</p></div>
        <div id="section0" >
            <div class="field"><label for="link">Link</label><input type="url" id="link" name="link" required autofocus></div>
            <div class="field"><label for="followtag">Follow Tag</label><span>With rel="nofollow" tag</span><input type="radio" value="1" id="followtag" name="followtag" required><span>With out rel="nofollow" tag</span><input type="radio" value="0" id="followtag" name="followtag" required></div>
            <div class="field"><label for="link_title">Title</label><input type="text" id="link_title" name="link_title" required></div>
            <div class="field"><input type="submit" id="Save" name="Save"></div>
        </div>
    </div>
</form>
</div>

<?php


        $rows=$wpdb->get_results( "SELECT * FROM " . BG_LINK_TABLE . "");
        
        

?>

<script type="text/javascript">
	window.onload=function(){
	var tfrow = document.getElementById('tfhover').rows.length;
	var tbRow=[];
	for (var i=1;i<tfrow;i++) {
		tbRow[i]=document.getElementById('tfhover').rows[i];
		tbRow[i].onmouseover = function(){
		  this.style.backgroundColor = '#f3f8aa';
		};
		tbRow[i].onmouseout = function() {
		  this.style.backgroundColor = '#ffffff';
		};
	}
};
</script>

<style type="text/css">
table.tftable {margin-top: 30px;font-size:12px;color:#333333;width:100%;border-width: 1px;border-color: #bcaf91;border-collapse: collapse;}
table.tftable th {font-size:12px;background-color:#ded0b0;border-width: 1px;padding: 8px;border-style: solid;border-color: #bcaf91;text-align:left;}
table.tftable tr {background-color:#ffffff;}
table.tftable td {font-size:12px;border-width: 1px;padding: 8px;border-style: solid;border-color: #bcaf91;}
</style>

<table id="tfhover" class="tftable" border="1">
<tr><th>Title</th><th>Link</th><th>rel="nofollow"</th><th>Action</th></tr>
<?php
foreach ($rows as $row)
        {
    
    //var_dump($row);
            echo '<tr><td>'.$row->title.'</td><td>'.$row->link.'</td><td>'.(($row->reltag==1)?'Yes':'No').'</td><td><a href="?page=bg-link-menu&d='.$row->id.'&bg_links=true">Delete</a></td></tr>';
        }
?>

</table>