import React from 'react'
import '../src/landing-page.css'
import 'bootstrap/dist/css/bootstrap.min.css';
import axios from 'axios';
import {Button} from 'reactstrap';


    
class CadPrest extends React.Component{

    constructor(props) {
        super(props);
        
        this.state = {name: '',phone: '',password:''};
    
        this.handleChangeNome = this.handleChangeNome.bind(this);
        this.handleChangePhone = this.handleChangePhone.bind(this);
        this.handleChangePassword = this.handleChangePassword.bind(this);

        this.handleSubmit = this.handleSubmit.bind(this);
      }
    
      handleChangeNome(event) {
        this.setState({name: event.target.value});
        
      }

      handleChangePhone(event) {
        this.setState({phone: event.target.value});
      }

      handleChangePassword(event) {
        this.setState({password: event.target.value});
      }

    handleSubmit(event) {
        axios.post( '/api/v1/prestador/', { prestador: {name: this.state.name, phone: this.state.phone} })
      .then(response => {
          console.log(response)
         
      })
      .catch(error => {
          console.log(error)
      })
        alert('A name was submitted: ' + this.state.name+this.state.phone+this.state.password);
        event.preventDefault();
      }

    render(){
        return (
           <React.Fragment>
            <div style={{height: '375px', marginTop:'5px'}}>
              <div>
                    <label>
                     Nome:
                     <input value={this.state.name} onChange={this.handleChangeNome} type="text" name="name" />
                    </label>
                    <label>
                     Telefone Waths App:
                     <input  value={this.state.phone} onChange={this.handleChangePhone} type="text" name="phone" />
                    </label>
                    <label>
                     Senha
                     <input value={this.state.password} onChange={this.handleChangePassword} type="text" name="senha" />
                    </label>
                    <Button className="btn btn-default" onClick={this.handleSubmit}>
                      Cadastrar
                     </Button>
              </div>
            </div>
         
           </React.Fragment>
        )
    }
}   


 export default CadPrest