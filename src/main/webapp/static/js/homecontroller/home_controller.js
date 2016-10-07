'use strict';
angular.module('profileApp')
.controller('UserRegisterController', ['$scope', '$window', 'HomeService', '$localStorage', function($scope, $window, HomeService, $localStorage) {
	//alert("hi UserRegisterController .....");
	var self = this;
    self.userdetails={userId:null,firstName:'',lastName:'', mobile:'', professionCat:'', actorType:'', backSupportTeam:'',
    		regAgency:'', userName:'',email:'',password:'',rePassword:'',signupId:''}
    self.submit = submit;
    
	 function userSave(userdetails){
		 HomeService.userSave(userdetails)
		     .then(
	    		 function(response) {
	    			 console.log("userSave data:",response.data);
	    			 var uresdata = response.data;
	    			 
	    			 $window.localStorage.setItem('userId', uresdata.userId);
	    			 $window.localStorage.setItem('mobile', uresdata.mobile);
	    			 $window.localStorage.setItem('email', uresdata.email);
	    			 $window.localStorage.setItem('sessionMenuId',1);
	    			 
			        if(uresdata.professionCat==='actors'){
			        	$window.location.href = 'actorProfile';
			        	$window.localStorage.setItem('loginAsId',1);
                    }else if(uresdata.professionCat==='backSupports'){
                    	$window.location.href = 'backSupportProfile';
                    	 $window.localStorage.setItem('loginAsId',2);
                    }else if(uresdata.professionCat==='regAgencys'){
                    	$window.location.href = 'agencyProfile';
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

	    function submit() {
            //console.log('Saving UserRegisterController New User', self.userdetails);
            userSave(self.userdetails);
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
	    				$window.localStorage.setItem('sessionMenuId',1);
	    			    if(data.professionCat==='actors'){
		    				 $window.location.href = 'actorProfile';
		    				 $window.localStorage.setItem('loginAsId',1);
	                    }else if(data.professionCat==='backSupports'){
	                    	$window.location.href = 'backSupportProfile';
	                    	$window.localStorage.setItem('loginAsId',2);
	                    }else if(data.professionCat==='regAgencys'){
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

/*angular.module('profileApp')
.controller('SelectValue', ['$scope', '$window',
          '$localStorage', function($scope, $window, $localStorage) {
	$scope.submit = function() {
		
		alert('hii');
		$window.localStorage.setItem('profession', $scope.profession);
		if($scope.profession=='actors'){
		  $window.localStorage.setItem('actorType',$scope.actorType);
		}else if($scope.profession=='backSupports'){
			$window.localStorage.setItem('backSupportTeam',$scope.backSupportTeam);
		}else if($scope.profession=='regAgencys'){
			$window.localStorage.setItem('regAgency',$scope.regAgency);
		}
		$("#registerSocialModal").modal('hide');
		$window.location.reload($("#registreModal").modal('show'));
		
    }
}]);*/



/*'use strict';
angular.module('profileApp')
.controller('UserRegisterController', ['$scope', '$window', 'HomeService', '$localStorage', function($scope, $window, HomeService, $localStorage) {
	//alert("hi UserRegisterController .....");
	var self = this;
    self.userdetails={userId:null,firstName:'',lastName:'', mobile:'', professionCat:'', actorType:'', backSupportTeam:'',
    		regAgency:'', userName:'',email:'',password:'',rePassword:'',signupId:''}
    self.submit = submit;
    
    
	 function userSave(userdetails){
		// console.log('userSave execute ',self.userdetails);
		 HomeService.userSave(userdetails)
		     .then(
	    		 function(response) {
	    			 console.log("userSave data:",response.data);
	    			 var uresdata = response.data;
	    			 
	    			 $window.localStorage.setItem('userId', uresdata.userId);
	    			 $window.localStorage.setItem('mobile', uresdata.mobile);
	    			 $window.localStorage.setItem('email', uresdata.email);
	    			 
	    			 $window.localStorage.removeItem('luserId');
	    			 $window.localStorage.removeItem('lmobile');
	    			 $window.localStorage.removeItem('lemail');
	    			 //console.log('userName in localstorage: ', $scope.$storage.userName);
	    			 
			        if(uresdata.professionCat==='actors'){
			        	//console.log("userName: ", $scope.$localstorage.$storage);
			        	console.log('UserData :',$window.localStorage.getItem('userId'));
			        	$window.location.href = 'actorProfile';
                    }else if(uresdata.professionCat==='backSupports'){
                    	$window.location.href = 'backSupportProfile';
                    }else if(uresdata.professionCat==='regAgencys'){
                    	$window.location.href = 'agencyProfile';
                    }else{
                    	$window.location.href = 'index';
                    }
	                 self.userdetails = response;
	             },
	    		 function(errResponse){
		                console.error('Error while save User');
		            }
				 );
	      }

	    function submit() {
            console.log('Saving UserRegisterController New User', self.userdetails);
            userSave(self.userdetails);
            $window.localStorage.setItem('sessionMenuId',1);
	       
	    }
	
}]);
//angular.module('profileApp').controller('LoginController', ['$scope', "$state", 'HomeService', function($scope,$state, HomeService) {
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
	    			 
	    			 $window.localStorage.setItem('luserId', data.userId);
	    			 $window.localStorage.setItem('lmobile', data.mobile);
	    			 $window.localStorage.setItem('lemail', data.email);
	    			 
	    			 $window.localStorage.removeItem('userId');
	    			 $window.localStorage.removeItem('mobile');
	    			 $window.localStorage.removeItem('email');
	    			 
	    			 console.log('userLogin data:',data); 
	    			 
	    			if(data.isUserValid==='true') {
	    				
	    			 if(data.professionCat==='actors'){
	    				 
	    				 window.location.href = 'actorProfile';
	    				 $window.localStorage.setItem('sessionMenuId',1);
	    				 $window.localStorage.setItem('loginAsId',1);
    				 
                    }else if(data.professionCat==='backSupports'){
                    	 window.location.href = 'backSupportProfile';
                    	 $window.localStorage.setItem('sessionMenuId',1);
	    				 $window.localStorage.setItem('loginAsId',2);
	    				 
                    }else if(data.professionCat==='regAgencys'){
                    	window.location.href = 'agencyProfile';
                    	$window.localStorage.setItem('sessionMenuId',1);
	    				$window.localStorage.setItem('loginAsId',3);
                    }else{
                    	$window.location.href = 'index';
                    }
	    			}else{
	    				 console.log('data:',data.errorMessege); 
	    				$scope.errorMessege = data.errorMessege;
	    			}
	                 self.ulogin = response;
	             },
	    		 function(errResponse){
		                console.error('Error while Login User');
		            }
				 );
	      }

	    function submit() {
            userLogin(self.ulogin);
	    }
	
}]);
*/