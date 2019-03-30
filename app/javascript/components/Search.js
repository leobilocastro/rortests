import React from 'react'
import {Button, Dropdown, DropdownToggle, DropdownMenu, DropdownItem } from 'reactstrap';

import 'bootstrap/dist/css/bootstrap.min.css';
class Search extends React.Component {
 state = {
   query: '',
 }

 handleInputChange = () => {
   this.setState({
     query: this.search.value
   })
 }
 constructor(props) {
    super(props);

    this.toggle = this.toggle.bind(this);
    this.state = {
      dropdownOpen: false
    };


    this.toggleCity = this.toggleCity.bind(this);
    this.state = {
      dropdownOpenCity: false
    };
  }

  toggle() {
    this.setState(prevState => ({
      dropdownOpen: !prevState.dropdownOpen
    }));
  }
  toggleCity() {
    this.setState(prevState => ({
      dropdownOpenCity: !prevState.dropdownOpenCity
    }));
  }
 render() {

    
   return (
    <React.Fragment>
        <div style={{backgroundColor: 'gray',height: '5px', marginTop:'5px'}}></div>
        <div style={{padding: '10px', backgroundColor: 'lightgray', marginTop:'5px', height: '65px'}}>
           <div style={{float:'left'}}>
                <form>
                    <input style={{width: '325px'}}
                        placeholder="Encontre um Profissional ..."
                        ref={input => this.search = input}
                        onChange={this.handleInputChange}
                    />
                    <p>{this.state.query}</p>
                </form>
           </div>
           <div style={{float:'left', marginLeft: '18px'}}>
           <Dropdown isOpen={this.state.dropdownOpen} toggle={this.toggle}>
        <DropdownToggle caret>
            Categoria
            </DropdownToggle>
                <DropdownMenu>
                <DropdownItem>Diarista</DropdownItem>
                <DropdownItem>Cuidador de idoso</DropdownItem>
                <DropdownItem>Bombeiro Hidraulico</DropdownItem>
                </DropdownMenu>
            </Dropdown>
           </div>
           <div style={{float:'left', marginLeft: '18px'}}>
           <Dropdown isOpen={this.state.dropdownOpenCity} toggle={this.toggleCity}>
        <DropdownToggle caret>
            Cidade
            </DropdownToggle>
                <DropdownMenu>
                <DropdownItem>Belo Horizonte</DropdownItem>
                <DropdownItem>Brasilia</DropdownItem>
                <DropdownItem>Montes Claros</DropdownItem>
                </DropdownMenu>
            </Dropdown>
           </div >
            <div style={{float:'left', marginLeft: '18px'}}>
            <Button className="btn btn-default">
            <span className="glyphicon glyphicon-search"></span> Pesquisar
            </Button></div>
           </div>
        

     </React.Fragment>
   )
 }
}
export default Search