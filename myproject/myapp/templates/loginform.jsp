<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        /* stylelint-disable selector-no-qualifying-type, property-no-vendor-prefix */

        body {
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: #eee;
        }

        .form-signin {
            max-width: 330px;
            padding: 15px;
            margin: 0 auto;
        }

        .form-signin .form-signin-heading,
        .form-signin .checkbox {
            margin-bottom: 10px;
        }

        .form-signin .checkbox {
            font-weight: 400;
        }

        .form-signin .form-control {
            position: relative;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            height: auto;
            padding: 10px;
            font-size: 16px;
        }

        .form-signin .form-control:focus {
            z-index: 2;
        }
    </style>
</head>

<body>
    <input type="hidden" id="id" name="id" value="{{id}}">

    <div class="container">
        <form class="form-signin" action="{%url 'loginform'%}" method="POST">
            {%csrf_token%}
            <!-- 폼 제출할때 목적지 정보도 같이 보내준다. -->
            <input type="hidden" name="url" value="${url }" />
            <h2 class="form-signin-heading">로그인 정보 입력</h2>
            <label for="id" class="sr-only">아이디</label>
            <input type="text" id="id" name="id" class="form-control" placeholder="아이디"
                style="margin-left: 16px;" /></br>
            <label for=" pwd" class="sr-only">비밀번호</label>
            <input type="password" id="pwd" name="pwd" class="form-control" placeholder="비밀번호">
            <button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
        </form>
    </div>
</body>
<!-- <script>
    var id = document.getElementById("id").value;
    console.log(id)
    console.log(typeof id)
    if (id = '') {
    } else {
        alert("{{id}}님 로그인 되었습니다.")
    }
</script> -->

</html>