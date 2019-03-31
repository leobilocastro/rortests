import React from 'react'
import '../src/landing-page.css'
import 'bootstrap/dist/css/bootstrap.min.css';
import axios from 'axios';

    
class Contato extends React.Component{

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
        axios.post( '/api/v1/users/new', { user: {name, phone,password} })
      .then(response => {
          console.log(response)
          const lists = [ ...this.state.lists, response.data ]
          this.setState({lists})
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
              <form onSubmit={this.handleSubmit}>
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
                     <input type="submit" value="Cadastrar" />
              </form>
            </div>
         
           </React.Fragment>
        )
    }
}   


 export default Contato