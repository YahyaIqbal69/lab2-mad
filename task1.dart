import 'dart:io';

void main()
{
List<String> tasks =[];

while(true){

print('\n=== To-Do List ===');
    print('1. Add Task');
    print('2. View Tasks');
    print('3. Remove Task');
    print('4. Exit');

stdout.write('Enter Your choice: ');

String choice = stdin.readLineSync() ?? '';

if(choice=='1')
{
stdout.write('Enter task:');
String task = stdin.readLineSync() ?? '';
if(task.isNotEmpty){
  tasks.add(task);

  print('Added Task: "$task"');

}
else{
  print('Cannot add empty task');

}


}

else if(choice =='2'){

if(tasks.isEmpty){
print('No tasks yet');

 }
 else{
 print('\nYour Tasks:');

 for(int i=0;i < tasks.length;i++)
 {
print('${i+1}. ${tasks[i]}');

 } 

 }


}

else if(choice =='3'){
if(tasks.isEmpty){
print('No tasks to remove ');

}
else{
  print('\nCurrent tasks:');
  for(int i=0;i<tasks.length;i++){
  print('${i+1}. ${tasks[i]}');

  }
}

stdout.write('Enter task number to remove : ');
String input = stdin.readLineSync() ?? '';

int? taskNumber =int.tryParse(input);

if(taskNumber != null && taskNumber > 0 && taskNumber <= tasks.length){
String removed= tasks.removeAt(taskNumber-1);
print('Task removed: $removed');
}else{
  print('Invalid task number');

}



}

else if(choice=='4'){
print('Exited');
break;
}
else{
print('Please enter 1-4:');

}

}


}
