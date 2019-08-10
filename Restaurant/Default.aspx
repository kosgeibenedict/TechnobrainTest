<html>
    <head>
        <title>Restaurant</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <style type="text/css">
        .sub-menu{
            margin-left:20px;
        }
        .level1{
            margin-left:35px;
        }
        .level2{
            margin-left:45px;
        }
        .level3{
            margin-left:55px;
        }
        .level4{
            margin-left:65px;
        }
    </style>
<body ng-app="Restaurant"  ng-controller="myCtrl">
    <div class="container">
    <h1>Restaurant Menu</h1>
    <form runat="server">
        <div class="container">
        <div class="form-group">
            <input type="checkbox" name="level0" data-toggle='collapse' data-target='#collapsalad' ng-model="salads.isChecked"  ng-click="toggleSelection()"  /><label>Salad</label>
            <div class="sub-menu collapse" id="collapsalad">
                <div class="form-group">
                    <input type="checkbox" name="level1" ng-checked="salad_id" /><label>Santa Fe</label>
                </div>
                <div class="form-group">
                    <input type="checkbox" name="level1" ng-checked="salad_id" /><label>Greek</label>
                </div>
                <div class="form-group">
                    <input type="checkbox" name="level1" ng-checked="salad_id" /><label>Asian</label>
                </div>
                <h5><small>You might also want:</small></h5>
                <div class="form-group">
                    <input type="checkbox" name="level1" ng-checked="salad_id" data-toggle='collapse' data-target='#collapdress' ng-model="dressing" /><label>Dressing</label>
                    <div class="form-group level2 collapse" id="collapdress">
                        <div class="form-group">
                            <input type="checkbox" name="level2" ng-checked="dressing_id" /><label>Italian</label>
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="level2" ng-checked="dressing_id" /><label>Blue Cheese</label>
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="level2" ng-checked="dressing_id" /><label>Ranch</label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <input type="checkbox" name="level1" ng-checked="salad_id" data-toggle='collapse' data-target='#collapebread' ng-model="bread" /><label>Bread</label>
                    <div class="form-group level2 collapse" id="collapebread">
                        <div class="form-group">
                            <input type="checkbox" name="level2" ng-checked="bread_id" /><label>Italian</label>
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="level2" ng-checked="bread_id" /><label>Flat</label>
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="level2" ng-checked="bread_id" /><label>Sourdough</label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group">
            <input type="checkbox" name="level0" data-toggle='collapse' data-target='#collapentree' ng-model="entree" /><label>Entree</label>
            <div class="sub-menu collapse" id="collapentree">
                <div class="form-group">
                    <input type="checkbox" name="level1" ng-checked="entree_id" /><label>Steak</label>
                </div>
                <div class="form-group">
                    <input type="checkbox" name="level1" ng-checked="entree_id" /><label>Salmon</label>
                </div>
                <div class="form-group">
                    <input type="checkbox" name="level1" ng-checked="entree_id" /><label>Rice</label>
                </div> 
            </div>
        </div>
        <div class="form-group">
                    <input type="checkbox" name="level1" data-toggle='collapse' data-target='#collapsoup' ng-model="soup" /><label>Soup</label>
                    <div class="level2 collapse" id="collapsoup">
                        <div class="form-group">
                            <input type="checkbox" name="level2" ng-checked="soup_id" /><label>Mistronene</label>
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="level2" ng-checked="soup_id" /><label>Hot and Sour</label>
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="level2" ng-checked="soup_id" /><label>Miso</label>
                        </div>
                        <h4><small>You might also like:</small></h4>
                        <div class="form-group">
                            <input type="checkbox" name="level2" data-toggle='collapse' data-target='#collapbr'  ng-model="bread" /><label>Bread</label>
                              <div class="level3 collapse" id="collapbr">
                                    <div class="form-group">
                                        <input type="checkbox" name="level3" ng-checked="bread_id" /><label>Breadsticks</label>
                                    </div>
                                </div>
                        </div>
                    </div>
                </div> 
            
         </div>
    </form>
    </div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <script>
        var app = angular.module('Restaurant', []);
        app.controller('myCtrl', function ($scope) {
            $scope.salads = function toggleSelection(event) {
                // how to check if checkbox is selected or not
                //$scope.salads = true;
                if ($scope.event = true) {

                } else {
                    $scope.salad_id = false;
                }
            }; 

        });
</script>
</body>
</html>