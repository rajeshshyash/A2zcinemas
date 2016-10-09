'use strict';
angular.module('profileApp')
.controller('UserRegisterController', ['$scope', '$window', 'HomeService', '$localStorage', function($scope, $window, HomeService, $localStorage) {
	//alert("hi UserRegisterController .....");
	var self = this;
    self.userdetails={userId:null,firstName:'',lastName:'', mobile:'', professionCat:'', actorType:'', backSupportTeam:'',
    		regAgency:'', userName:'',email:'',password:'',rePassword:'',signupId:''}
    
	 function userSave(userdetails){
		 HomeService.userSave(userdetails)
		     .then(
	    		 function(response) {
	    			 
	    			 console.log("userSave data:",response.data);
	    			 var uresdata = response.data;
	    			 
	    			 $window.localStorage.setItem('userId', uresdata.userId);
	    			 $window.localStorage.setItem('mobile', uresdata.mobile);
	    			 $window.localStorage.setItem('email', uresdata.email);
	    			 
			        if(uresdata.professionCat==='actors'){
			        	$window.location.href = 'actorProfile';
			        	$window.localStorage.setItem('sessionMenuId',1);
			        	$window.localStorage.setItem('loginAsId',1);
                    }else if(uresdata.professionCat==='backSupports'){
                    	$window.location.href = 'backSupportProfile';
                    	$window.localStorage.setItem('sessionMenuId',1);
                    	 $window.localStorage.setItem('loginAsId',2);
                    }else if(uresdata.professionCat==='regAgencys'){
                    	$window.location.href = 'agencyProfile';
                    	$window.localStorage.setItem('sessionMenuId',1);
                    	$window.localStorage.setItem('loginAsId',3);
                    }else{
                    	$window.location.href = 'index';
                    }
	                 self.userdetails = response;
	             },
	    		 function(errResponse){
		                console.error('Error while save and register user!');
		            }
				 );
	      }

	 $scope.ctrlUser = {};
	 $scope.ctrlUser.userdetails = {};
	 
	 $scope.regi = function(){
		 $scope.ctrlUser.userdetails.professionCat = $("#profession").val();
		 $scope.ctrlUser.userdetails.actorType = $("#actorType").val();
    	 $scope.ctrlUser.userdetails.backSupportTeam = $("#backSupportTeam").val();
    	 $scope.ctrlUser.userdetails.regAgency = $("#regAgency").val();
    	 
		 console.log($scope.ctrlUser.userdetails);
		 
		 userSave(JSON.stringify($scope.ctrlUser.userdetails));
	    }
}]);

angular.module('profileApp').controller('LoginController', ['$scope', '$window', 'HomeService', '$localStorage', function($scope, $window, HomeService, $localStorage) {
	//alert("hi userLogin .....");
	var self = this;
    self.ulogin={userName:'',password:''}
    self.submit = submit;
    
 
	 function userLogin(ulogin){
		 console.log('userLogin execute ',self.ulogin);
		 HomeService.userLogin(ulogin)
		     .then(
	    		 function(response) {
	    			 console.log('userLogin success data ',response.data); 
	    			 var data = response.data;
	    			 
	    			 $window.localStorage.setItem('userId', data.userId);
	    			 $window.localStorage.setItem('mobile', data.mobile);
	    			 $window.localStorage.setItem('email', data.email);
	    			 
	    			 console.log('userLogin data:',data); 
	    			 
	    			if(data.isUserValid==='true') {
	    				
	    			    if(data.professionCat==='actors'){
		    				 $window.location.href = 'actorProfile';
		    				 $window.localStorage.setItem('sessionMenuId',1);
		    				 $window.localStorage.setItem('loginAsId',1);
	                    }else if(data.professionCat==='backSupports'){
	                    	$window.localStorage.setItem('sessionMenuId',1);
	                    	$window.location.href = 'backSupportProfile';
	                    	$window.localStorage.setItem('loginAsId',2);
	                    }else if(data.professionCat==='regAgencys'){
	                    	$window.localStorage.setItem('sessionMenuId',1);
	                    	$window.location.href = 'agencyProfile';
	                    	$window.localStorage.setItem('loginAsId',3);
	                    }else{
	                    	$window.location.href = 'index';
	                    }
	    			}else{
	    				$scope.errorMessege = data.errorMessege;
	    				console.log('User Login error :',data.errorMessege); 
	    			}
	                 self.ulogin = response;
	             },
	    		 function(errResponse){
		                console.error('Error while login user!');
		            }
				 );
	      }
	    function submit() {
            //console.log('Saving userLogin New User', self.ulogin);
            userLogin(self.ulogin);
	    }
}]);
