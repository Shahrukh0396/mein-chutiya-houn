pragma solidity ^0.4.24;
contract rohan{
    struct zameen{
        address owner;
        uint price;
        
    }
     event pricechanged(string a,uint b);
     event ownerchanged(string a, address b);
    zameen[2] public zameenx;
    constructor(){
        zameenx[0].owner=tx.origin;
        zameenx[0].price=5;
        zameenx[1].owner=tx.origin;
        zameenx[1].price=2;
        
    }
   
    
    function changeprice(uint b,uint c) public returns(uint){
        require(msg.sender == zameenx[b].owner ,"This is by an Unauthenticated Person");
        require(c > 0 ,"the new price should always be greater than 0");
        zameenx[b].price = c;
        emit pricechanged("Price has been changed" ,c);
        return c;
        
    }
    
    function changeowner(uint a,address b) public returns(address){
        require(msg.sender == zameenx[a].owner);
        require(zameenx[a].owner != b );
        zameenx[a].owner = b;
        emit ownerchanged("Owner has been changed" ,b);
        return b;
    }
    
    
}