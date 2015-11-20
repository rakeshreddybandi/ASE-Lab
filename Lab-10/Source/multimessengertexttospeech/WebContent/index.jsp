<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Text to Speech</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/watson-bootstrap-dark.css">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="row top-nav">
                    
                </div>
                <div style="padding-bottom:0px;" class="row header">
                    <div class="avatar img-container col-lg-1 col-xs-1">
                    	<img src="images/app.png">
                    </div>
                    <div class="col-lg-6 col-xs-6">
                        <h2>Text to Speech Application</h2>
                    </div>
                    
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-7 col-md-7 col-xs-12">
                <h2>Application</h2>
                <div class="well">
                    <form method="get" class="form-horizontal">
                        <fieldset>
                            <div class="row">
                                <div class="col-lg-12 col-xs-12">
                                    <label for="textArea" class="control-label">Enter the text to be converted</label>
                                    <textarea id="textArea" name="text" rows="8" required class="form-control"></textarea>
                                </div>
                            </div>
                            <div style="margin-bottom:30px;" class="row">
                                <label for="voice" class="col-lg-12 col-xs-12 control-label">Select the Voice model:</label>
                                <div class="col-lg-12 col-xs-12">
                                    <select class="select-voice" id="voice" style="width:100%" name="voice" required class="form-control">
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 col-xs-4 download-container">
                                    <input value="Download" class="btn btn-block download-button">
                                </div>
                                <div class="col-lg-4 col-xs-4 text-center"></div>
                                <div class="col-lg-4 col-xs-4 ie-speak">
                                    <input value="Speak" class="btn btn-block speak-button">
                                    <div class="arrow-box">
                                        <p>This browser cannot play the ogg audio format. Use Chrome or Firefox to play audio.</p>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
            <div class="col-lg-5 col-md-5 col-xs-12">
                <h2>Output</h2>
                <div class="row">
                    <div class="col-lg-12 col-xs-12">
                        <div style="display:none" class="well result">
                            <div class="text-center">
                                <audio autoplay preload="auto" autobuffer controls class="audio"></audio>
                            </div>
                            </div>
                        </div>
                        <div style="display:none" class="well error">
                            <div class="form-group row">
                                <div class="col-lg-12 col-xs-12">
                                    <p class="errorMsg">Error processing the request.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="help-block text-center"><small>Audio output only plays on browsers supporting
ogg audio format, including recent versions of <a href="https://www.google.com/intl/en/chrome/browser/desktop/" target="_blank">Chrome </a>and <a href="https://www.mozilla.org/en-US/firefox/new/" target="_blank">Firefox.</a></small>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="js/browser-detect.js"></script>
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="js/constants.js"></script>
    <script type="text/javascript" src="js/demo.js"></script>
</body>

</html>