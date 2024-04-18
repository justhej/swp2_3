## 2.3 Initialization

### 2.3.1 Initializig your expert

```Swift
// 2.3.1
// v- 0

let expert = Expert()

var gems = 0

func pat(){
    for i in 1...10{
        expert.moveForward()
        if expert.isBlocked{
            expert.turnLeft()
            expert.turnLeft()
            if expert.isOnGem{
                expert.collectGem()
            }
        }
    }
}

for i in 1...3{
    expert.moveForward()
}


expert.turnLockUp()
pat()
expert.turnLeft()
pat()



////////////////////////////////


```




```Swift
// 2.3.1
// v- 1
let expert = Expert()

(1...3).forEach {_ in expert.moveForward()}
expert.turnLockUp()
expert.turnLeft()
expert.turnLeft()

func clear(){
    (1...3).forEach {_ in expert.moveForward()}
    expert.turnRight()
    (1...3).forEach {_ in expert.moveForward()}
    expert.collectGem()
    expert.turnLeft()
    expert.turnLeft()
}

(1...3).forEach {_ in clear()}

////////////////////////////////


```




```Swift
// 2.3.1
// v- 2

let expert = Expert()

var steps = 0
while steps < 21 {
expert.moveForward()
    steps += 1
    if steps == 3 {
    expert.turnLockUp()
    }
    if expert.isBlocked {
        expert.turnLeft()
        expert.turnLeft()
        expert.collectGem()
        }
    if steps == 12 {
        expert.turnRight()
    }
}


////////////////////////////////


```

### 2.3.2 Train your expert


```Swift
// 2.3.2
// v- 0

let expert = Expert()

var gems = 0
func nav(){
    expert.moveForward()
    if expert.isOnGem{
        expert.collectGem()
        gems += 1
    };
    if expert.isBlocked{
        if gems == 2{
            expert.turnLockDown()
        }
        expert.turnLeft()
        expert.turnLeft()
    };
}
while gems < 6{
    nav()
    if gems == 1 || gems == 3 {
        expert.moveForward()
    }
    if !expert.isBlockedLeft{
        expert.turnLeft()
        nav()
    };
    if !expert.isBlockedRight{
        expert.turnRight()
    };
}




////////////////////////////////


```




```Swift
// 2.3.2
// v- 1

let expert = Expert()

var s = 0
while true {
    expert.moveForward()
    s += 1
    if expert.isBlocked{
        expert.collectGem()
        if s == 10 {
          expert.turnLockDown()
              }
       expert.turnRight()
       expert.turnRight()
    }
    if s == 8 || s == 4 || s == 12 || s == 19 {
        expert.turnRight()
    }
    if s == 25 {
        break
    }
}

////////////////////////////////


```

### 2.3.3 Using instances of different types


```Swift
// 2.3.3
// v- 0

let expert = Expert()
let character = character()

expert.moveForward()
var steps = 0

func moveAndGem(){
    character.moveForward()
    steps += 1
    if character.isOnGem{
        character.collectGem()
    }
}

while steps < 2 || steps < 5 {
    moveAndGem()
    if steps == 2 {
        character.turnRight()
            expert.turnLockUp()
            } else if steps == 4 {
                while character.isBlocked{
                    expert.turnLockDown()
                }
            }
        }


    



////////////////////////////////


```




```Swift
// 2.3.3
// v- 1

let ex = Expert()
let ch = Character()

ch.moveForward()
ch.collectGem()
ex.moveForward()
ch.moveForward()
ex.moveForward()
ch.turnRight()
ex.turnLockUp()
ch.moveForward()
ch.moveForward()
ex.turnLockDown()
ex.turnLockDown()
ch.moveForward()
ch.collectGem()



////////////////////////////////


```

### 2.3.4 It takes two


```Swift
// 2.3.4
// v- 0

let expert = Expert()
let character = character()

var esteps = 0
expert.turnLeft()
while esteps < 5 {
    expert.moveForward()
    esteps += 1
    if expert.isBlocked{
        expert.turnRight()
    }
    
}
expert.turnLeft()
while character.isBlocked{
    expert.turnLockDown()
}

character.moveForward()
character.moveForward()
expert.turnLeft()
while esteps < 15 {
    expert.moveForward()
    esteps += 1
    if expert.isBlocked{
        expert.turnLeft()
}
}
expert.turnRight()

while character.isBlocked{
    expert.turnLockUp()
}

character.collectGem()
character.moveForward()
character.moveForward()
character.toggleSwitch()



////////////////////////////////


```


```Swift
// 2.3.4
// v- 1

let expert = Expert()
let character = character()

let ex = Expert(), ch = Character()
var steps = 0
ex.turnRight()

while ch.isBlocked {
    ex.moveForward()
    steps += 1
    if ex.isBlocked && !ex.isBlockedLeft{
        ex.turnLeft()
    }
    
    if steps == 5 {
        ex.turnRight()
        ex.turnLockUp()
        ex.turnLeft()
    }
    
    if steps == 15 {
        ex.turnRight()
        ex.turnLockDown()
        ex.turnLockDown()
    }

    while !ch.isBlocked{
        ch.moveForward()
        if ch.isOnGem{
            ch.collectGem()
        }
        if ch.isOnClosedSwitch {
            ch.toggleSwitch()
        }
    }
    if steps == 16 {
        break
    }
}



////////////////////////////////


```

```Swift
// 2.3.4
// v- 2

let ex = Expert()
let ch = character()

var steps = 0
func exMove(){
    ex.turnLeft()
    for k in 1...16 {
        ex.moveForward()
        steps += 1
        if ex.isBlocked{
            ex.turnRight()
        }
        if steps == 5  {
            ex.turnLeft()
            ex.turnLockDown()
            ex.turnLockDown()
        }
    }
}

exMove()
ex.turnLeft()
ex.turnLockUp()

for k in 1...4 {
    ch.moveForward()
    if k % 2 == 0{
        ch.collectGem() || ch.toggleSwitch()
    }
}




////////////////////////////////


```
