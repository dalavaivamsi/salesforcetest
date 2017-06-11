public class actionpollercontroller {


Integer count = 5;
public PageReference incrementCounter() {
count= count +5 ;
return null;
}
public Integer getCount() {
return count;
}
}