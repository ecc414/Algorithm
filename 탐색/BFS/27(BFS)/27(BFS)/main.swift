//
//  main.swift
//  27(BFS)
//
//  Created by 엄철찬 on 2022/06/14.
//
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let row = input[0]
let column = input[1]

let dx = [0,-1,0,1]
let dy = [1,0,-1,0]

var mapArray = Array(repeating:[Int](),count:row)

for r in 0..<row {    //get data
    mapArray[r] = readLine()!.map{Int(String($0))!}
}

var queue = [(Int,Int)]()
var visited = Array(repeating: Array(repeating:false,count:column),count:row)
var r = 0
var c = 0


func BFS(){
    visited[0][0] = true
    queue.append((0,0))
        
    while(!queue.isEmpty){
        
        let current = queue.removeFirst()
        r = current.0
        c = current.1
    
        if r == row-1 && c == column-1 {    //목표지점 도착
            break
        }
        
        for i in 0...3{
            let x = r + dx[i]
            let y = c + dy[i]
            if x>=0 && x < row && y>=0 && y < column && mapArray[x][y] == 1 && !visited[x][y]{
                visited[x][y] = true
                queue.append((x,y))
                mapArray[x][y] += mapArray[r][c]
            }
        }
    }
}

BFS()

print(mapArray[row-1][column-1])
