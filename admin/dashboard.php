<?php
ob_start();
session_start();
if (isset($_SESSION['username'])) {
    $pagetitle = "dashboard";
    include "init.php";
    $theLatests = getLatest("*", "usres", "UserID", "DESC", "4");

    /* start page dashboard */
    ?>
    <div class="container home-dashboard">
        <h2 class="dashboardTitle text-center h1">DashBoard</h2>


        <div class="row">
            <div class="col-md-3 mb-2">
                <div class="stst st-muberes">
                    Total muberes
                    <span>
                            <?php $res = getCountRowUsUserID() ?>
                            <a href="muber.php?do=manage&page=userAvation"><?= $res ?></a>
                        </span>
                </div>
            </div>
            <div class="col-md-3 mb-2">
                <div class="stst st-panding">
                    Panding muberes
                    <span>
<!--                            --><?php //$res = getCountRowpindingUsRegStatus("UserID","usres",0);
                        ?>
                            <a href="muber.php?do=manage&page=panding"><?= checkItem("RegStatus", "usres", "0") ?></a>
                        </span>
                </div>
            </div>
            <div class="col-md-3 mb-2">
                <div class="stst st-item">
                    Total Items
                    <span>360</span>
                </div>
            </div>
            <div class="col-md-3 mb-2">
                <div class="stst st-comment">
                    Total Comments
                    <span>1520</span>
                </div>
            </div>
        </div>
    </div>

    <div class="container litest mt-4">
        <div class="row">

            <div class="col-sm-6 mb-2">
                <div class="card mb-4">
                    <div class="card-body p-0">
                        <h5 class="card-title btn-primary p-2"><i class="fa fa-user mr-3"></i>Last User Reguster <?= count($theLatests) ?> .</h5>

                        <ul class="litest pr-5 ">
                            <?php
                            foreach ($theLatests as $latest) {
                                ?><li class="list-group-item pt-0 pb-0  overflow-hidden "><span class="d-inline-block  p-2" latest-span"><?= $latest['Username'];?></span>
                                <a href="muber.php?do=edite&id=<?= $latest['UserID'] ?>&gid=<?=$latest['GroupID']?>>"
                                   class="btn btn-success fa-pull-right mt-0"><i
                                            class="fa fa-edit"></i>Edit</a>

                                <?php
                                if ($latest['RegStatus'] == 0) {
                                    ?>
                                    <a href="muber.php?do=activet&id=<?= $latest['UserID'] ?>&gid=<?=$latest['GroupID']?>" class="btn btn-info fa-pull-right mt-0 mr-2">
                                        <i class="fa fa-edit"></i>Active</a><?php
                                }
                                ?>


                                </li><?php
                            }
                            ?>
                        </ul>
                        <div class="text-center"><a href="#" class="btn btn-primary ml-2">Go somewhere</a></div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 mb-2">
                <div class="card mb-4">
                    <div class="card-body p-0">
                        <h5 class="card-title btn-primary p-2"><i class="fa fa-tag mr-3"></i>Latest Items Add</h5>
                        <p class="card-text pl-2 pr-2">Some quick example .</p>
                        <a href="#" class="btn btn-primary ml-2">Go somewhere</a>
                    </div>
                </div>
            </div>


        </div>
    </div>


    <?php

    /* end page dashboard */

    include $tpl . "footer.php";

} else {
    header('Location: index.php');
    exit();
}

ob_end_flush();
?>