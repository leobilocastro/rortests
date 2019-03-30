// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'

import {
  Carousel,
  CarouselItem,
  CarouselControl,
  CarouselIndicators,
  CarouselCaption } from 'reactstrap';

const items = [
  {
    src: '/img/prof.jpeg',
    altText: 'Professor Particular',
    caption: 'Professor Particular'
  },
  {
    src: '/img/diarista.jpg',
    altText: 'Diarista',
    caption: 'Diarista'
  },
  {
    src: '/img/bombeiro.jpeg',
    altText: 'Bombeiro Hidráulico',
    caption: 'Bombeiro Hidráulico'
  },

  {
    src: '/img/baba.jpeg',
    altText: 'Baba',
    caption: 'Baba'
  },
  {
    src: '/img/cuidador.jpeg',
    altText: 'Cuidador de Idoso',
    caption: 'Cuidador de Idoso'
  }
  
];


class CarouselMain extends React.Component {
  constructor(props) {
    super(props);
    this.state = { activeIndex: 0 };
    this.next = this.next.bind(this);
    this.previous = this.previous.bind(this);
    this.goToIndex = this.goToIndex.bind(this);
    this.onExiting = this.onExiting.bind(this);
    this.onExited = this.onExited.bind(this);
  }

  onExiting() {
    this.animating = true;
  }

  onExited() {
    this.animating = false;
  }

  next() {
    if (this.animating) return;
    const nextIndex = this.state.activeIndex === items.length - 1 ? 0 : this.state.activeIndex + 1;
    this.setState({ activeIndex: nextIndex });
  }

  previous() {
    if (this.animating) return;
    const nextIndex = this.state.activeIndex === 0 ? items.length - 1 : this.state.activeIndex - 1;
    this.setState({ activeIndex: nextIndex });
  }

  goToIndex(newIndex) {
    if (this.animating) return;
    this.setState({ activeIndex: newIndex });
  }

  render() {
    const { activeIndex } = this.state;

    const slides = items.map((item) => {
      return (
                  
        <CarouselItem
          className="carouselImg"
          onExiting={this.onExiting}
          onExited={this.onExited}
          key={item.src}
        >
          <img src={item.src} alt={item.altText} />
          <CarouselCaption captionText={item.caption} captionHeader={item.caption} />
        </CarouselItem>
      
       
       
      );
    });

    return (
    
      <Carousel
        activeIndex={activeIndex}
        next={this.next}
        previous={this.previous}
      >
        <CarouselIndicators items={items} activeIndex={activeIndex} onClickHandler={this.goToIndex} />
        {slides}
        <CarouselControl direction="prev" directionText="Previous" onClickHandler={this.previous} />
        <CarouselControl direction="next" directionText="Next" onClickHandler={this.next} />
      </Carousel>
    );
  }
      
}
  
<style>
{
  `.carousel-item > img { 
    width: 100%; 
  }`
}
</style>

export default CarouselMain
