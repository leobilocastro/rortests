// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'

import {
  UncontrolledCarousel } from 'reactstrap';

const items = [
  {
    
    altText: 'Professor Particular',
    caption: 'Professor Particular'
  },
  {
    
    altText: 'Diarista',
    caption: 'Diarista'
  },
  {
    
    altText: 'Bombeiro Hidráulico',
    caption: 'Bombeiro Hidráulico'
  },

  {
    
    altText: 'Baba',
    caption: 'Baba'
  },
  {
    
    altText: 'Cuidador de Idoso',
    caption: 'Cuidador de Idoso'
  },
  {
    
    altText: 'Eletricista Residencial e Predial',
    caption: 'Cuidador de Idoso'
  },
  
  {
    
    altText: 'Pedreiro',
    caption: 'Pedreiro'
  }
];


class CarouselMain extends React.Component {
    render(){
        return(
        <React.Fragment>
            <div style={{marginTop: '1px'}}>
                <UncontrolledCarousel items={items} />
            </div>
        </React.Fragment>    
        )
    }
 
     
}
  
export default CarouselMain
