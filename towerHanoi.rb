def towerHanoi(disks, source=[], aux=[], target=[], moves=0)
 
  if source.empty? && target.empty? && aux.empty?
    disks.times.reverse_each {|i| source << i+1}
  end
       
  if disks == 1 
    target << source.pop
    moves+=1
  else
    moves = towerHanoi(disks - 1, source, target, aux, moves)
    moves = towerHanoi(1, source, aux, target, moves)
    towerHanoi(disks - 1, aux, source, target, moves)         
  end
end