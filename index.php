<?php

require "config.php";
$message = "";

if (isset($_POST["title"]) && isset($_POST["description"]) && isset($_POST["author"])){
    $Code = $_POST["title"];
    $Lot = $_POST["description"];
    $AvgPrice = $_POST["author"];
    $data = "INSERT INTO Trading(title, description, author) VALUE (:title, :description, :author)";
    $statement = $connection ->prepare($data);
    if ($statement ->execute([":title" => $Code, ":description"=>$Lot, ":author"=>$AvgPrice])){
        $message = "Mantap brow";
    }
}
?>

<?php require "header.php"?>
<div class="container">
    <div class="code">
        <div class="code-header">
            <h2>Form Pendaftaran</h2>
        </div>

        <div class="code-body">
            <?php if (!empty($message)): ?>
            <div class="alert alert-success">
                <?= $message ?>
            </div>
            <?php endif; ?>
            <form action="" method="post">
                <div class="form-group">
                    <label for="title">Judul Buku</label>
                    <input type="text" name="title" id="title" class="form-control">
                </div>
                <div class="form-group">
                    <label for="title">Judul Buku</label>
                    <input type="text" name="description" id="description" class="form-control">
                </div>
                <div class="form-group">
                    <label for="title">Judul Buku</label>
                    <input type="text" name="author" id="author" class="form-control">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-info">Create Data</button>
                </div>
            </form>
        </div>
    </div>
</div>
<?php require "footer.php"?>
