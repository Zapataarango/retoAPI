#language: en
Feature: Creacion exitosa de usuario y orden

  Scenario: Creacion de Orden
    Given  se envien las operaciones de los servicios para "userAdmin" en "/auth"
    When valida que le codigo de status sea 200