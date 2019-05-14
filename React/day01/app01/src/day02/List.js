import React from 'react';
import '../day01/list.css'
class List extends React.Component{
    //初始化  构造函数
    constructor(props){
        super(props);
        //局部状态的仅在当前组件中有效，动态改变ui  获取ul上的数据状态变化
        this.state={
            //修改值之后，值将会重新执行
            arr : [1,2,3]
        }
        //每个一秒改变arr
        setInterval(() =>{
            //修改应用地址，再算改变值
            this.setState({
                // arr : this.state.arr.concat
                // (this.state.arr,Math.random())
                // arr:[...this.state.arr,Math.random()]
            })
        },1000);
    }
    // 渲染
    //state中重新加载，重新渲染
    render(){
        //将state中的局部状态解构
        let {arr} = this.state;
        return (
           <div>
               <ul className="list">
                   {
                       this.state.arr.map((item,index) => <li ket={index}>{item}</li>)

                   }
               </ul>
           </div> 
        );
    }
}
export default List;