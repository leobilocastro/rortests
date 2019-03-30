import React from 'react'
import '../src/landing-page.css'
import 'bootstrap/dist/css/bootstrap.min.css';

import {
    Collapse,
    Navbar,
    NavbarToggler,
    NavbarBrand,
    Nav,
    NavItem,
    NavLink,
    UncontrolledDropdown,
    DropdownToggle,
    DropdownMenu,
    DropdownItem,
    } from 'reactstrap';



         
const layout = {
    padding: '1px',
}

const style = {
    float: 'left',
    margin:  '20px',
    padding: '5px'
    
}

const divStyle = {
   
    display: 'flex',
    margin: '20px', 
    padding: '1px',
    
    marginRight: '5px'
    
    
  };



class Menu extends React.Component {
    render (){
        return (
            <React.Fragment>
            <div style={layout}>
                <div><a href="/home/index"><img border="0" alt="Hsdx" style={style} src="/img/logo.png"/></a></div> 
                <div style={divStyle}>
                    <Navbar color="light" light expand="md">
                    <NavbarBrand href="/home/funciona">COMO FUNCIONA</NavbarBrand>
                    <NavbarBrand href="/home/termos">TERMOS DE USO</NavbarBrand>
                    <NavbarBrand href="/home/sobre">SOBRE NÓS</NavbarBrand>
                    <NavbarBrand href="/home/contato">CONTATO</NavbarBrand>
                    <NavbarToggler />
                    <Collapse  navbar>
                        <Nav className="ml-auto" navbar>
                        <NavItem>
                            <NavLink href="/users/sign_up/">SEJA UM PRESTADOR</NavLink>
                        </NavItem>
                        <NavItem>
                            <NavLink href="/users/sign_in">ENTRAR</NavLink>
                        </NavItem>
                        <UncontrolledDropdown nav inNavbar>
                            <DropdownToggle nav caret>
                             IDIOMA
                            </DropdownToggle>
                            <DropdownMenu right>
                            <DropdownItem>
                                PORTUGUES
                            </DropdownItem>
                            <DropdownItem>
                                INGLES
                            </DropdownItem>
                            </DropdownMenu>
                        </UncontrolledDropdown>
                        </Nav>
                    </Collapse>
                    </Navbar>      
                </div>
        </div>
        </React.Fragment>
        )
        
    }
} 

  

export default Menu

