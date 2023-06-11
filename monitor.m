function errors = monitor(dane,dekoded)
errors = sum(dane ~= dekoded);

end
