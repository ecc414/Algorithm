//BFS
let input = Int(String(readLine()!))!    //number of nodes

var tree = Array(repeating:[(node:Int,dist:Int)](),count:input+1)

for _ in 1...input{
    let input = readLine()!.split(separator:" ").map{Int(String($0))!}
    for i in 1..<input.count-1{
        if i%2 == 0{
            tree[input[0]].append((input[i-1],input[i]))
        }
    }
}


var visited = Array(repeating:false,count:input+1)
var node = 0
var dist = 0

func DFS(startNode:Int,distance:Int){
    guard !visited[startNode] else { return }
    visited[startNode] = true
    if distance > dist {
        node = startNode
        dist = distance
    }
    for (nextNode,weight) in tree[startNode]{
        guard !visited[nextNode] else {continue}
        DFS(startNode:nextNode,distance:distance+weight)
    }
}

func BFS(startNode : Int) -> (node:Int,distance:Int){
    var visited = Array(repeating:false,count:input+1)
    var queue = [(Int,Int)]()    //queue.0 = node, queue.1 = distance
    var node = 0
    var distance = 0
    queue.append((startNode,0))
    visited[startNode] = true
    while( !queue.isEmpty ){
        let remove = queue.removeFirst()
        
        if distance < remove.1{
            node = remove.0
            distance = remove.1
        }
        
        for (nextNode,weight) in tree[remove.0]{
            if !visited[nextNode] {
                visited[nextNode] = true
                queue.append((nextNode,remove.1+weight))
            }
        }
    }
    return (node,distance)
}

//print(BFS(startNode: 2))
//
//let point = BFS(startNode:2).node
//print(BFS(startNode:point).distance)

DFS(startNode:3,distance:0)
print(node,dist)
dist = 0
visited = Array(repeating:false,count:input+1)
DFS(startNode:node,distance:0)
print(dist)



