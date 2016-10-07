'use strict';
var App = angular.module('profileApp', ['ngStorage']);


/*App.directive("fileread", [function () {
	return {
		scope: {
            fileread: "=",
        },
        link: function(scope, element, attributes){
        	    element.bind("change", function (changeEvent){
        		scope.fileread = changeEvent.target.files[0];	
        	});
        }
	}
}]);   

App.controller('LoginController', function($scope) {
    // function to submit the form after all validation has occurred            
    $scope.submit = function() {
        // check to make sure the form is completely valid
        if ($scope.loginform.$valid) {
            alert('our form is amazing');
        }
    };
});*/


/*App.factory('HomeService', function($rootScope) {
    var sharedHomeService = {};
    
    sharedHomeService.mobile = '';
    sharedHomeService.email = '';
    

    sharedHomeService.prepForBroadcast = function(mobile,email) {
        this.mobile = mobile;
        this.email = email;
        this.broadcastItem();
    };

    sharedHomeService.broadcastItem = function() {
        $rootScope.$broadcast('handleBroadcast');
    };

    return sharedHomeService;
});

function UserRegisterController($scope, sharedHomeService) {
    $scope.handleClick = function(mobile,email) {
    	alert("mobile:"+mobile+ ","+"email:"+email );
    	sharedHomeService.prepForBroadcast(mobile,email);
    };
        
    $scope.$on('handleBroadcast', function() {
        $scope.mobile = sharedHomeService.mobile;
        $scope.email = sharedHomeService.email;
    });        
}

function ProfileController($scope, sharedHomeService) {
    $scope.$on('handleBroadcast', function() {
        $scope.mobile = 'ProfileController: ' + sharedHomeService.mobile;
        $scope.email = 'ProfileController: ' + sharedHomeService.email;
    });        
}

function BackProfileController($scope, sharedHomeService) {
       $scope.$on('handleBroadcast', function() {
    	   $scope.mobile = 'BackProfileController: ' + sharedHomeService.mobile;
           $scope.email = 'BackProfileController: ' + sharedHomeService.email;
    });
}

UserRegisterController.$inject = ['$scope', 'sharedHomeService'];        
        
ProfileController.$inject = ['$scope', 'sharedHomeService'];

BackProfileController.$inject = ['$scope', 'sharedHomeService'];
*/
//'ui.router'
/*App.config(['$stateProvider',function ($stateProvider){
        	 $stateProvider
             .state('home', {
                 url: "/",
                 templateUrl: "/views/index.jsp",
                 controller: 'LoginController'
             })
        	 
             .state('profile', {
                 url: "/actorProfile",
                 templateUrl: 'actorProfile.html',
                 controller: 'ProfileController'
             })
             .state('backProfile', {
                 url: "/backSupportProfile",
                 templateUrl: 'static/backSupportProfile.html',
                 controller: 'BackProfileController'
             })

         }]);

*/
/*App.config( function ($routeProvider,$locationProvider) {
	
    $routeProvider.when('/index', {
        templateUrl: 'index',
        controller: LoginController
    });

    $routeProvider.when('/onlineaudition', {
        templateUrl: 'onlineaudition',
        controller: AuditionController
    });
    
    $routeProvider.when('/useronedetalis', {
        templateUrl: 'useronedetalis',
        controller: UserOneController
    });
      
    $routeProvider.otherwise({redirectTo: '/index'});
});

*/
