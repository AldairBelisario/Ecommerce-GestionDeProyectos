<?php 

session_destroy();

echo '<script>
window.location = "<?php echo $basePath ?>/";
</script>';


