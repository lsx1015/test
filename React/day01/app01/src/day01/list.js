import React from 'react';
import "./list.css";
function List(props){
    let {data} = props; 
    return (
        <ul className="list">
          {
              //es6写法
              data.map(item => <li>{item}</li>)
            //es5写法
            //   data.map(function(item){
            //       return <li>{item}</li>;
            //   })
          }
        </ul>
    );
}
export default List;