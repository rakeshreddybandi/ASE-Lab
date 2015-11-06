/**
 * Created by Rakesh on 11/5/2015.
 */
function Factory() {
    this.createAccount = function (type) {
        var account;

        if (type === "Facebook") {
            account = new Facebook();
        } else if (type === "Twitter") {
            account = new Twitter();
        } else if (type === "Yahoo") {
            account = new Yahoo();
        } else if (type === "Google") {
            account = new Google();
        }

        account.type = type;

        account.say = function () {
            log.add(this.type + ": No of contacts : " + this.contacts );
        }

        return account;
    }
}

var Facebook = function () {
    this.contacts = "562";
};

var Twitter = function () {
    this.contacts = "541";
};

var Yahoo = function () {
    this.contacts = "510";
};

var Google = function () {
    this.contacts = "125";
};

// log helper
var log = (function () {
    var log = "";

    return {
        add: function (msg) { log += msg + "\n"; },
        show: function () { alert(log); log = ""; }
    }
})();

function run() {
    var accounts = [];
    var factory = new Factory();

    accounts.push(factory.createAccount("Facebook"));
    accounts.push(factory.createAccount("Twitter"));
    accounts.push(factory.createAccount("Yahoo"));
    accounts.push(factory.createAccount("Google"));

    for (var i = 0, len = accounts.length; i < len; i++) {
        accounts[i].say();
    }

    log.show();
}