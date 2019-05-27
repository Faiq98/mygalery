<%-- 
    Document   : index
    Created on : May 19, 2019, 4:01:48 PM
    Author     : fhfai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Galery</title>
    </head>
    <body style="padding: 30px;">
        <form action="UploadImage" method="post" enctype="multipart/form-data">
            <div class="card" style="margin-bottom: 10px;">
                <div class="card-header">
                    Image Detail
                </div>
                <div class="card-body">
                    <table>
                        <tr>
                            <td>
                                <img style="margin: 10px;" id="preview" src="#" alt="your image"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="file" class="form-control-file" onchange="previewImage(this)" name="img"/>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <input style="margin-bottom: 5px;" type="submit" class="btn btn-primary btn-lg btn-block" value="Add New Image"/>
        </form>
        <button type="button" class="btn btn-secondary btn-lg btn-block" onclick="window.location.href='allImage.jsp'">Galery</button>
        <script>
            function previewImage(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        $('#preview')
                                .attr('src', e.target.result)
                                .width(300)
                    };

                    reader.readAsDataURL(input.files[0]);
                }
            }
        </script>
    </body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
</html>
