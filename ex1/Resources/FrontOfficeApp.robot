*** Settings ***
Resource    PO/Landing.robot
Resource    PO/Nav.robot
Resource    PO/Team.robot

*** Variables ***


*** Keywords ***
Go to Landing Page
    Landing.Navigate To
    Landing.Verify Page Loaded

Go to "Team" Page
    Nav.Select "Team" Page
    Team.Verify Page Loaded

Go to "Portfolio" Page
    Nav.Select "Portfolio" Page

Go to "About" Page
    Nav.Select "About" Page

Go to "Contact" Page
    Nav.Select "Contact" Page

Go to "Services" Page
    Nav.Select "Services" Page

Validate "Team" Page
    Team.Verify Page Loaded