import React from "react";

function ChildComponent(props){
    return (
        <div>
            <p>{props.message}</p>
        </div>
    );
}

export default ChildComponent;