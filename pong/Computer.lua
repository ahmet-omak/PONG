Computer=Class{}

--constructor function
function Computer:init(x,y,width,height)
    self.x=x
    self.y=y
    self.width=width
    self.height=height
    self.dy = 150 
end

--draw in the screen
function Computer:render()
    love.graphics.rectangle('fill',self.x,self.y,self.width,self.height)
end 
--moves as a logic below
function Computer:start(dt,ballY)
    if (self.y+self.height/2)-2>ballY then
        self.y=self.y-self.dy*dt
    elseif (self.y+self.height/2)-2<ballY then
        self.y=self.y+self.dy*dt
    end
end
--load screen animation
function Computer:load(ballY)
    self.y=ballY
end 