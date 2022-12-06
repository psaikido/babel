<?php
class babel {
    private $mysqli;

    function __construct() {
        include('config.php');
        $this->mysqli = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);

        if (mysqli_connect_errno()) {
            printf("Can't connect to MySQL Server. Errorcode: %s\n", mysqli_connect_error());
            exit;
        }
    }

    /* Read a language from the database and make dhtml to change the page */
    function translator($lang): string {
        $str = '';

        $query = 'select * from translator where lang = "'.$lang.'";';
        $result = $this->mysqli->query($query);
        if ($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
                if ($row['type'] == 0){
                    $fieldValue = str_replace(array("\r", "\n"), '', $row['fieldValue']);

                    if ($row['fieldName'] == 'languageName'){
                        //the name of the language is written as a select option
                        $str.= 'document.getElementById("langSelect").value = "'.$lang.'";';
                    } else {
                        $str.= 'document.getElementById("translator_'.$row['fieldName'].'").innerHTML = "'.utf8_decode($fieldValue).'";';
                    }
                } elseif ($row['type'] == 1){
                    if ($row['fieldName'] == 'postCodeLength'){
                        $str.= 'var postCodeLength = '.$row['fieldValue'].';';
                    }
                }
            }
        }

        return $str;
    }

    /* Take an uploaded csv file and add a new language to the database */
    function processLangFile($data) {
        $query = 'DROP TABLE IF EXISTS `translator`;';
        if ($result = $this->mysqli->query($query)){
            echo 'table dropped<br />'."\n";
        } else {
            echo 'failed drop: '.$query;
            exit;
        }

        $query = 'CREATE TABLE IF NOT EXISTS `translator` (
                `id` int(11) NOT NULL auto_increment,
                `lang` varchar(255) character set latin1 NOT NULL,
                `type` varchar(50) collate utf8_unicode_ci NOT NULL default "0" COMMENT "0=language, 1=validation",
                `fieldName` varchar(255) character set latin1 NOT NULL,
                `fieldValue` varchar(255) collate utf8_unicode_ci NOT NULL,
                PRIMARY KEY  (`id`)
            ) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=0 ;';

        if ($result = $this->mysqli->query($query)){
            echo 'table recreated<br />'."\n";
        } else {
            echo 'failed create: '.$query;
            exit;
        }

        $query = 'INSERT INTO `translator` (`id`, `lang`, `type`, `fieldName`, `fieldValue`) VALUES ';

        foreach($data as $row){
            $row = explode(',', $row);
            $query.= '(NULL,"'.$row[0].'",'.$row[1].',"'.$row[2].'","'.utf8_encode($row[3]).'"),';
        }

        // Take off the last comma.
        $query = substr($query, 0, -1);

        if ($result = $this->mysqli->query($query)){
            echo 'data loaded<br />'."\n";
        } else {
            echo 'failed insert: '.$query;
        }
    }

    /* This gets the languages for the main drop down list */
    function langDdl(): string {
        $query = 'select lang, fieldValue from translator
            where fieldName = "languageName"
            order by lang;';

        $result = $this->mysqli->query($query);
        if ($result = $this->mysqli->query($query)) {
            $str = "var ddl = document.getElementById('langSelect');";
            for ($x = 0; $x < $result->num_rows; $x++) {
                $row = $result->fetch_assoc();
                $str.= 'var langOption'.$x.' = document.createElement("option");';

                $fieldValue = str_replace(array("\r", "\n"), '', $row['fieldValue']);
                $str.= 'langOption'.$x.'.text = "'.utf8_decode($fieldValue).'"; ';
                $str.= 'langOption'.$x.'.value = "'.utf8_decode($row['lang']).'";';
                $str.= 'ddl.appendChild(langOption'.$x.');';
            }

            return $str;
        }
    }
}

