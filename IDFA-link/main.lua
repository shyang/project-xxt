nLog = require('nLog')()
require('faker')
require('xxtsp')

if not(xxtinstall())then
	log("伪装失效")
	os.exit()
else
	XXTFaker = require("XXTFaker")()
end

bid={}
bid.果聊 = {
				['appbid']='com.hachin.im',
				['url']='https://lnk0.com/Y9EFls',
			}
bid.闪电降价 = {
				['appbid']='com.hs.shanjiang',
				['url']='https://lnk0.com/dEdI5k',
			}
bid.集享联盟 = {
				['appbid']='com.maxxipoint.ios',
				['url']='https://event.maxxipoint.com/event/h5DownloadApp.do?activityId=32'
			}

screen.init(0)
var = {}
var.lun = 0
--全局变量


function up(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa
	idfalist.ip = '192.168.1.1'
	idfalist.ip = get_ip() or '192.168.1.1'
	idfalist.account = account
	idfalist.password = password
	idfalist.phone = phone
	idfalist.other = other
	return post(url,idfalist)
end

function rd(n,k)
	return math.random(n,k)
end

function appname(bid)
	return app.localized_name(bid) or '未安装'
end

--openUrl("https://m.weibo.cn/status/4258678762614093?wm=3333_2001&from=1087093010&sourcetype=weixin&featurecode=newtitle")
--os.exit()


web={}
web.open={{{526,632,0x007aff},{396,622,0x3897ff},{393,623,0xffffff},},85}

function open(urls)
	openUrl(urls)
	delay(3)
	local timeline = os.time()
	local outtimes = 60
	while os.time()-timeline < outtimes do
		if d(web.open,"web.open",true,1)then
			delay(math.random(10,15))
			return true
		end
		delay(1)
	end
	log("open time ",true)
end



apparr={}
apparr.right={{{462,666,0x007aff},{225,666,0x007aff},}, 85, 54, 394, 590, 809}
apparr.闪电降价tip={{{374,886,0xffdb4c},{256,881,0xffdb4c},{471,227,0x4c4c4c},},85}

function newidfa(bids,times)
	for i= 1,times do
		if XXTfakerNewPhone(bids)then
			idfa = XXTfakerGetinfo(bids)['IDFA']
			local TIMEline = os.time()
			local OUTtime = rd(100,110)
			while os.time()- TIMEline < OUTtime do
				if active(bids,4)then
					if d(apparr.right,"apparr.right",true)then
					elseif d(apparr.闪电降价tip,"apparr.闪电降价tip",true,1)then
					
					else
						moveTo(600,300,100,100,30,50)
						delay(1)
						click(321, 978)
						delay(1)
						click(462, 666)
						delay(1)
					end
				end
			end
			up(appname(bids),'初次上传')
		end
	end
end


--[[]]
require("jhlm")

while true do
	if true or vpn()then
		--[[
		if open(bid.集享联盟.url)then
			newidfa(bid.集享联盟.appbid,1)
		end
		--]]
		if open(bid.闪电降价.url)then
			newidfa(bid.闪电降价.appbid,1)
		end
	end
	vpnx()	
end
--]]



















	
	