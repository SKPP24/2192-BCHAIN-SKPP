import React from "react";
import ChildComponent from "./ChildComponent";

function ParentComponent() {
    const dataToPass = "Hello from Parent!";
    return (
        <ChildComponent message={dataToPass}/>
    );
}
export default ParentComponent;