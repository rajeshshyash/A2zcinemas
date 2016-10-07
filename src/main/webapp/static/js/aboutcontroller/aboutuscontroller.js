'use strict';
angular.module('profileApp').controller('AboutusController',['$scope','$window','$localStorage', function($scope,$window,$localStorage) {
		
					$scope.aboutus = $window.localStorage.getItem('sessionMenuId');
					$scope.loginAsId = $window.localStorage.getItem('loginAsId');
					
					 //alert($window.localStorage.getItem('sessionMenuId'));
                     //alert($window.localStorage.getItem('loginAsId'));
                 

                 $scope.sessionmenuId= function(menuId)
					{
						$window.localStorage.setItem('sessionMenuId', 0);	
					}                 
				} ]);