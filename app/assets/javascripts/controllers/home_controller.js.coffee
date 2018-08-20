RickAndMortyCharacterList = angular.module('RickAndMortyCharacterList')

RickAndMortyCharacterList.controller 'HomeController', ($scope, $http, $q) ->
  $scope.characters = []

  getData = (url) ->
    $http.get(url).then (response) ->
      angular.forEach response.data.results, (character) ->
        $scope.characters.push {
          name: character.name,
          status: character.status,
          species: character.species,
          type: character.type,
          gender: character.gender,
          origin: character.origin.name,
          location: character.location.name,
        }

      getData(response.data.info.next) if response.data.info.next != ""

  getData("https://rickandmortyapi.com/api/character?page=1")