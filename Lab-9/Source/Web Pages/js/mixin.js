/**
 * Created by Rakesh on 11/5/2015.
 */
function augment( receivingClass, givingClass ) {
    // only provide certain methods
    if ( arguments[2] ) {
        for ( var i = 2, len = arguments.length; i < len; i++ ) {
            receivingClass.prototype[arguments[i]] = givingClass.prototype[arguments[i]];
        }
    }
    // provide all methods
    else {
        for ( var methodName in givingClass.prototype ) {

            if ( !Object.hasOwnProperty.call(receivingClass.prototype, methodName) ) {
                receivingClass.prototype[methodName] = givingClass.prototype[methodName];
            }


        }
    }
}

var Mixin  = function() {}
Mixin.prototype = {
    postMethod: function(){
        console.log( "Inside http POST")
    },
    putMethod: function(){
        console.log( "Inside http PUT" );
    },
    deleteMethod: function(){
        console.log( "Inside http DELETE" );
    },
    getMethod: function(){
        console.log( "Inside http GET" );
    }
};

// A skeleton carAnimator constructor
function Inside() {

}

augment(Inside, Mixin);

var inside = new Inside();