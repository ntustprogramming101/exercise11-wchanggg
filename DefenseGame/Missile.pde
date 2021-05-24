class Missile{
  
  int currentTargetIndex = -1;
  
  Missile(){
  }
  
  void searchForTarget(){
    // Current shortest distance; set to 999999 since we haven't started our search
    float shortestDist = 999999;
    
    // For every soldier in soldiers array:
      // First, check if the soldier exists and is alive
      // if not, skip to the next one
      
      // Then check if the soldier is inside our max following angle
      // if not, skip to the next one
      
      // Then check if the soldier is closer to the missile than current closest soldier
      // if not, skip to the next one
      
      // This soldier is now the closest soldier we know that meets our requirement!
      // Remember who the soldier is (by the index) and update the shortest distance
  }
  
  // -- uncomment for exercise 3
  //void updateAngle(){
  //  if(currentTargetIndex == -1
  //  || soldiers[currentTargetIndex] == null
  //  || !soldiers[currentTargetIndex].isAlive){
  //    currentTargetIndex = -1;
  //    searchForTarget();
  //  }else{
  //    float angle = atan2(soldiers[currentTargetIndex].y - y, soldiers[currentTargetIndex].x - x);
  //    if(getRadiansDifference(targetAngle, angle) <= radians(maxFollowingAngle)){
  //      targetAngle = lerpTowardsRadians(targetAngle, angle, 0.05);
  //    }else{
  //      searchForTarget();
  //    }
  //  }
  //}
  
  float lerpTowardsRadians(float from, float to, float amount){
    if(from * to >= 0 || abs(to - from) <= PI) return lerp(from, to, amount);
    if(from < 0){
      from += TWO_PI;
    }else{
      to += TWO_PI;
    }
    float result = lerp(from, to, amount);
    if(result > PI) result -= TWO_PI;
    return result;
  }
}
