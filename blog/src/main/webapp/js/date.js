/**
 * js日历控件
 */
/*注册事件监听器*/
function addEvent(elem,eventType,fn){
	if(!elem.addEventListener&&!elem.attachEvent){
		return false;
	}else if(elem.addEventListener){   
		/*如果是w3c浏览器*/
		elem.addEventListener(eventType,fn,false);
	}else if(elem.attachEvent){        
		/*如果是ie*/
		elem.attachEvent("on"+eventType,fn);
	}
}

addEvent(window,"load",function(){
	/*输出表格*/
	var timeForm = document.getElementById("timeForm");
	timeForm.innerHTML = '<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-bottom:3px;"><tr class="title"><th height="28" align="center" valign="middle">日</th><th height="28" align="center" valign="middle">一</th><th height="28" align="center" valign="middle">二</th><th height="28" align="center" valign="middle">三</th><th height="28" align="center" valign="middle">四</th><th height="28" align="center" valign="middle">五</th><th height="28" align="center" valign="middle">六</th></tr></table>';
	var objTable = document.createElement("table");
	objTable.setAttribute("width","100%");
	objTable.setAttribute("border","0");
	objTable.setAttribute("cellspacing","0");
	objTable.setAttribute("cellpadding","0");
	for(var i=0;i<6;i++){
		var tr = objTable.insertRow(0);
		for(var j=0;j<7;j++){
			var td = tr.insertCell(0);
		}
	}
	timeForm.appendChild(objTable);
	var tds = objTable.getElementsByTagName("td");
	for(var i=0;i<tds.length;i++){
		tds[i].setAttribute("align","center");
		tds[i].setAttribute("valign","middle");
		tds[i].setAttribute("height",27);
	}
	
	
	
										
	var prevYear = document.getElementById("prevYear");	
	var nextYear = document.getElementById("nextYear");
	var yearInfo = document.getElementById("yearInfo");
	var selectMonth = document.date.selectMonth;
	
	var savebtn = document.getElementById("save");
	var memo = document.date.memo;
	/*用于存放备忘录的数组，数组的每个元素都是一个对象{}*/
	var memos = new Array();
	

	/*获得当前日期的相关参数,并且把数据初始化到各个表单中*/
	var date = new Date();
	var year = date.getFullYear();
	var month = date.getMonth() + 1;
	var dateCurrent = date.getDate();
	var day = date.getDay();
	yearInfo.innerHTML = year;
	var option = selectMonth.options;
	for(var i=0;i<option.length;i++){
		if(parseInt(option[i].value)==month){
			option[i].selected = true;
		}
	}
	writedatePostion(parseInt(year),parseInt(selectMonth.options[selectMonth.selectedIndex].value),tds);
	for(var i=0;i<tds.length;i++){
		if(tds[i].innerHTML ==dateCurrent){
			tds[i].className = "current";
		}
	}
	
	/*选择年份*/
	prevYear.onclick = function(){
		yearInfo.innerHTML = (parseInt(yearInfo.innerHTML)-1).toString();
		writedatePostion(parseInt(yearInfo.innerHTML),parseInt(selectMonth.options[selectMonth.selectedIndex].value),tds);
		for(var i=0;i<tds.length;i++){
			tds[i].className = "";
			if(tds[i].innerHTML == dateCurrent){
				tds[i].className = "current";	
			}
		}
	}
	nextYear.onclick = function(){
		yearInfo.innerHTML = (parseInt(yearInfo.innerHTML)+1).toString();
		writedatePostion(parseInt(yearInfo.innerHTML),parseInt(selectMonth.options[selectMonth.selectedIndex].value),tds);
		for(var i=0;i<tds.length;i++){
			tds[i].className = "";
			if(tds[i].innerHTML == dateCurrent){
				tds[i].className = "current";	
			}
		}
	}	
	
	/*选择月份*/
	selectMonth.onchange = function(){
		writedatePostion(parseInt(yearInfo.innerHTML),parseInt(selectMonth.options[selectMonth.selectedIndex].value),tds);
		for(var i=0;i<tds.length;i++){
			tds[i].className = "";
			if(tds[i].innerHTML == dateCurrent){
				tds[i].className = "current";	
			}
		}
	}
	
	
	/*判断是否是瑞年*/
	function isLeapYear(iYear){
		if(iYear%4==0&&iYear%100!=0){
			return true;
		}else{
			if(iYear%400==0){
				return true;
			}else{
				return false;
			}
		}
	}
	
	
	/*获得某年某月的天数并且得出和星期的对应关系*/
	function writedatePostion(year,month,domArr){
		/*先初始化清除所有显示天数*/
		for(var i=0;i<domArr.length;i++){
			domArr[i].innerHTML = "";	
		}
		
		var nDate = new Date();
		var daynum;
		if(month==1||month==3||month==5||month==7||month==8||month==10||month==12){
			daynum = 31;
		}else if(month==4||month==6||month==9||month==11){
			daynum = 30;
		}else if(month==2&&isLeapYear(year)){
			daynum = 29;
		}else{
			daynum = 28;
		}
		nDate.setFullYear(year);
		nDate.setMonth(month-1);
		nDate.setDate(1);
		switch(nDate.getDay()){
			case 0:
				for(var i=0;i<daynum;i++){
					domArr[i].innerHTML = i+1
				}
				break;
			
			case 1:
				for(var i=0;i<daynum;i++){
					domArr[i+1].innerHTML = i+1
				}
				break;
			
			case 2:
				for(var i=0;i<daynum;i++){
					domArr[i+2].innerHTML = i+1
				}
				break;
			
			case 3:
				for(var i=0;i<daynum;i++){
					domArr[i+3].innerHTML = i+1
				}
				break;
				
			case 4:
				for(var i=0;i<daynum;i++){
					domArr[i+4].innerHTML = i+1
				}
				break;
				
			case 5:
				for(var i=0;i<daynum;i++){
					domArr[i+5].innerHTML = i+1
				}
				break;
				
			case 6:
				for(var i=0;i<daynum;i++){
					domArr[i+6].innerHTML = i+1
				}
				break;
		}
	}
	
	
	
	
	/*选择具体某一天的响应程序*/
	for(var i=0;i<tds.length;i++){
		tds[i].onclick = function(){
			if(this.innerHTML!=""){
				for(var j=0;j<tds.length;j++){
					tds[j].className = "";
				}
				this.className = "current";
			}
		}
	}
	/**备忘录操作所存取数据，没有数据库的支持。
	*只在js中建立一个数组来存储，故而在不刷新页面的情况下，可以进行操作
	*如需和服务器进行交互，使用ajax也十分方便
	*/
	
});