app.factory('svcPlace', function ($rootScope, $http, $q) {
    $this = {

        list: function (category,searchText,pageNo,pageSize) {
            var deferred = $q.defer();
            $http({
                method: 'GET',
                url: BasePath+'/class/place?category='+category+'&searchText='+searchText+'&pageNo='+pageNo+'&pageSize='+pageSize
            }).success(function (data, status) {
                deferred.resolve(data);
            }).error(function (data, status) {
                deferred.reject(data);
            });
            return deferred.promise;
        },
		 search: function (searchText,pageNo,pageSize) {
            var deferred = $q.defer();
            $http({
                method: 'GET',
                url: BasePath+'/class/search?searchText='+searchText+'&pageNo='+pageNo+'&pageSize='+pageSize
            }).success(function (data, status) {
                deferred.resolve(data);
            }).error(function (data, status) {
                deferred.reject(data);
            });
            return deferred.promise;
        },
		 budgetsearch: function (categoryId,budget,pageNo,pageSize) {
            var deferred = $q.defer();
            $http({
                method: 'GET',
                url: BasePath+'/class/budgetsearch?categoryId='+categoryId+'&budget='+budget+'&pageNo='+pageNo+'&pageSize='+pageSize
            }).success(function (data, status) {
                deferred.resolve(data);
            }).error(function (data, status) {
                deferred.reject(data);
            });
            return deferred.promise;
        }
		,removeFile: function (filename,id) {
            var deferred = $q.defer();
            $http({
                method: 'GET',
                url: BasePath+'/class/place/remove/image?filename='+filename+'&id='+id
            }).success(function (data, status) {
                deferred.resolve(data);
            }).error(function (data, status) {
                deferred.reject(data);
            });
            return deferred.promise;
        }, getByCategory: function (id) {
            var deferred = $q.defer();
            $http({
                method: 'GET',
                url: BasePath+'/class/place/category/'+id
            }).success(function (data, status) {
                deferred.resolve(data);
                $this.objects = data;
                $this.count = data.length;
            }).error(function (data, status) {
                $this.objectes = [];
                $this.count = 0;
                deferred.reject(data);
            });
            return deferred.promise;
        },
		  getById: function (id) {
            var deferred = $q.defer();
            $http({
                method: 'GET',
                url: BasePath+'/class/place/'+id
            }).success(function (data, status) {
                deferred.resolve(data);
                $this.objects = data;
                $this.count = data.length;
            }).error(function (data, status) {
                $this.objectes = [];
                $this.count = 0;
                deferred.reject(data);
            });
            return deferred.promise;
        },  getImages: function (id) {
            var deferred = $q.defer();
            $http({
                method: 'GET',
                url: BasePath+'/class/place/images/'+id
            }).success(function (data, status) {
                deferred.resolve(data);
                $this.objects = data;
                $this.count = data.length;
            }).error(function (data, status) {
                $this.objectes = [];
                $this.count = 0;
                deferred.reject(data);
            });
            return deferred.promise;
        },
		deleteData: function (id) {
            var deferred = $q.defer();
            $http({
                method: 'DELETE',
                url: BasePath+'/class/place/'+id
            }).success(function (data, status) {
                deferred.resolve(data);
                $this.objects = data;
                $this.count = data.length;
            }).error(function (data, status) {
                $this.objectes = [];
                $this.count = 0;
                deferred.reject(data);
            });
            return deferred.promise;
        }
		,save: function (postData) {
            var deferred = $q.defer();
            $http({
                method: 'POST',
                url: BasePath+'/class/place',
                data:postData
            }).success(function (data, status) {
                deferred.resolve(data);
                $this.objects = data.Results;
                $this.count = data.Count;
            }).error(function (data, status) {
                $this.objectes = [];
                $this.count = 0;
                deferred.reject(data);
            });
            return deferred.promise;
        }
    };
    return $this;
});