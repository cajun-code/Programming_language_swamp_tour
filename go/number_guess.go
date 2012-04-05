package main

import "fmt"
import "math/rand"
import "time"

func main(){
  rand.Seed(time.Now().Unix())
  var x = rand.Intn(100)
  fmt.Printf("Hello World\n Random Number: %d\n", x)
}
