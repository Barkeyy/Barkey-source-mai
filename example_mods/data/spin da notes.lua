function onUpdate(elapsed)

	  for i = 0,19 do
	  	setPropertyFromGroup('strumLineNotes',i,'angle',(getPropertyFromGroup('strumLineNotes',0,'angle')+15))
      end
	end