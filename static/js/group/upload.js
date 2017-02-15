var uploads = {
    init: function() {
        this.start();
    },

    start: function() {
        var canUpload = false;

        $('#upload').on('change', function() {
            canUpload = uploads.checkFileType($(this).val());

            $('#viewfile').val($(this).val().substring(12));
            $(this).css('display', 'none');

            if(canUpload) {
                $('#uploadID').prop('disabled',false).removeClass('btn-default').addClass('btn-primary');
            } else {
                $('#uploadID').prop('disabled',true).removeClass('btn-primary').addClass('btn-default');
            }
        });

        $('#uploadID').on('click', function() {
            $('#uploadFormID').submit();
            $(this).prop('disabled',true);
            $(this).text('上传中,请稍后...');
        });
    },

    checkFileType: function(filename) {
        var _validFileExtensions = [".xlsx",".xls"];

        if(filename.length > 0) {
            var blnValid = false;
            for(var j = 0; j < _validFileExtensions.length; j++) {
                var sCurExtension = _validFileExtensions[j];
                if(filename.substr(filename.length - sCurExtension.length, sCurExtension.length).toLowerCase() == sCurExtension.toLowerCase()) {
                    blnValid = true;
                    break;
                }
            }
            return blnValid;
        }
    }
};


uploads.init();