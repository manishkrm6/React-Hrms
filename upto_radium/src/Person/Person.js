import React from 'react';
import './Person.css';
import Radium from 'radium';


const person = (props) => {

    const style = {
        '@media (min-width: 500px)': {
            width: '450px'
        }
    }

return (
    <div className="Person" style={style}>
    <input type="text"  onChange={props.changed} value={props.name} />
    <p onClick={props.click}>Hi, I'm {props.name} and I and I am {props.age} Years Old. </p>
    <p>{props.children}</p>

    </div>
)

};


export default Radium(person);