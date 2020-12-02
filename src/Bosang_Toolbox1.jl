module Bosang_Toolbox1

	export boxing
	
	function boxing(a,ninbox)
		maxnum=findmax(a)[1]
		boxlength=Int32(floor(length(a)/ninbox))
		boxbin=maxnum/boxlength
		x=boxbin/2:boxbin:maxnum
		counts=zeros(Int32,boxlength)
		for iter in a
			toadd=Int32(ceil(iter/boxbin))
			if toadd>boxlength  toadd=boxlength  end
			if toadd<1  toadd=1  end
			counts[toadd]+=1
		end
		return (x,counts)
	end
	
end
