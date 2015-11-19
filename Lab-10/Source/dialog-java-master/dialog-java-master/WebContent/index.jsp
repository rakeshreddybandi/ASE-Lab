<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Dialog</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<header class="_demo--heading">
	<div class="_demo--container">
	
	</div>
</header>

	<div class="_demo--banner">
	<div class="_demo--container">
		<div class="banner--service-icon-container">
			<img class="banner--service-icon" src="images/social-media.jpg" alt="Concept Insight Service Demo Icon">
		</div>
		
	</div>
</div>
	<div class="_demo--container">
	<article class="_demo--content base--article">
		<h2 class="base--h2">
			Multimessenger Chat box
		</h2>
		<p>A Common Chat window for all services from the Social Networks.</p>
		<div class="radio-group">
			<input type="radio" name="dialog-template" id="hello-radio" value="hello" class="base--radio" checked>
			<label for="hello-radio" class="base--label radio-group--label">Chat through Twitter Helper</label>
			<input type="radio" name="dialog-template" id="yellow-radio" value="yellow" class="base--radio" disabled>
			<label for="yellow-radio" class="base--label radio-group--label">Facebook</label>
			<input type="radio" name="dialog-template" id="green-radio" value="green" class="base--radio" disabled>
			<label for="green-radio" class="base--label radio-group--label">Yahoo</label>
		</div>
		<div class="separate-line"></div>
		<h2 class="base--h2">
			Type to start chat
		</h2>
		<div class="_content--dialog">
			<div class="chat-window">
				<div class="chat-box">
					<div class="chat-box--pane">
						<div class="chat-box--item_WATSON chat-box--item chat-box--item_HIDDEN">
							<div class="chat-box--container">
								<div class="img-container chat-box--avatar chat-box--avatar_WATSON">
									<img src="images/icons/avatar-watson.svg" class="chat-box--avatar-img">
								</div>
								<div class="chat-box--message">
									<div class="chat-box--message-vertical">
										<p class="chat-box--message-text base--p"></p>
									</div>
								</div>
							</div>
						</div>
						<div class="chat-box--item_YOU chat-box--item chat-box--item_HIDDEN">
							<div class="chat-box--container">
								<div class="chat-box--message">
									<div class="chat-box--message-vertical">
										<p class="chat-box--message-text base--p"></p>
									</div>
								</div>
								<div class="img-container chat-box--avatar chat-box--avatar_YOU">
									<img src="images/icons/avatar-you.svg" class="chat-box--avatar-img">
								</div>
							</div>
						</div>
						<!-- adding extra space hack -->
						<div style="height: 15px; visibility: hidden;"></div>
						<div class="loader">
							<div class="loader--fallback"><img src="images/watson.gif" width="50" alt=""></div>
						</div>
					</div>
				</div>

				<input type="text" placeholder="Type a response and hit enter" value="" autocomplete="off" class="chat-window--message-input base--text-input">
			</div>
		</div>

		<div class="_content--data">
			<div class="tab-panels" role="tabpanel">
				<ul class="tab-panels--tab-list" role="tablist">
					<li class="tab-panels--tab-list-item base-li" role="presentation">
						<a class="tab-panels--tab base--a active" href="#data-panel" aria-controls="text" role="tab">Data</a>
					</li>
					
				</ul>
				<div class="tab-panels--tab-content">
					<div id="data-panel" class="tab-panels--tab-pane active" role="tab-panel">
						<div class="base--textarea">
							
							<h6 class="base--h6">Profile</h6>
							<div class="data--profile">
							</div>
						</div>
					</div>
					<div id="json-panel" class="tab-panels--tab-pane" role="tab-panel">
						<textarea class="base--textarea"></textarea>
					</div>
				</div>
			</div>
		</div>
		<!-- Property template -->
		<div class="data--variable hidden">
			<span class="data--variable-title"></span>
			<span class="data--variable-value"></span>
		</div>
	</article>
</div>


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  	<script type="text/javascript" src="js/demo.js"></script>
</body>
</html>
