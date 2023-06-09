*** Settings ***
Resource    PO/Nav.robot
Resource    PO/About.robot
Resource    PO/Blog.robot
Resource    PO/Portfolio.robot


*** Variables ***
${URL}      https://qaplayground.dev/apps/links/


*** Keywords ***
Navigate To
    Go To    ${URL}
    Nav.Validate Load

Navigate To "Home"
    Nav.Select "Home" Option

Navigate To "About"
    Nav.Select "About" Option

Validate "About" Page
    About.Validate

Navigate To "Blog"
    Nav.Select "Blog" Option

Validate "Blog" Page
    Blog.Validate

Navigate To "Portfolio"
    Nav.Select "Portfolio" Option

Validate "Portfolio" Page
    Portfolio.Validate

Navigate To "Contact"
    Nav.Select "Contact" Option
