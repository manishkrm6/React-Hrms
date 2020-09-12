import React from 'react';
import './Person.css';
import styled from 'styled-components';

const StyledDiv = styled.div`text-align: center;
width: 60%;
margin: 20px auto;
border: 1px solid #eee;
box-shadow: 0 2px 3px #ccc;
padding:16px;



@media (min-width: 500px) {
width: 450px;
}`;

const person = (props) => {

    const style = {
        '@media (min-width: 500px)': {
            width: '450px'
        }
    }

return (
   
    //<div className="Person" style={style}>
    <StyledDiv>
        
        <input type="text"  onChange={props.changed} value={props.name} />
        <p onClick={props.click}>Hi, I'm {props.name} and I and I am {props.age} Years Old. </p>
        <p>{props.children}</p>
        
    </StyledDiv>
   //</div>

)

};


export default person;