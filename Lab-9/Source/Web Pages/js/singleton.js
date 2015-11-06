/**
 * Created by Rakesh on 11/5/2015.
 */
var Heading = (function () {
    // Instance stores a reference to the Singleton
    var instance;

    function init() {
        // Singleton
        // Private methods and variables
        function privateMethod(){
            console.log( "I am private" );
        }

        var privateVariable = "Im also private";

        return {
            // Public methods
            changeheading: function () {
                return instance.username;
            },
            //Public Properties
            username : localStorage.getItem("uname")

        };
    };

    return {
        // Get the Singleton instance if one exists
        // or create one if it doesn't
        getInstance: function () {
            if ( !instance ) {
                instance = init();
            }
            return instance;
        }
    };
})();