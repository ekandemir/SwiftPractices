//
//  main.cpp
//  deneme
//
//  Created by Developing on 26.09.2017.
//  Copyright © 2017 erdinckandemir. All rights reserved.
//

#include <iostream>
#include <cstring>
using namespace std;
struct student {
    char name[15];
    int grade;
    student *next;
};



int main(int argc, const char * argv[]) {
    
    student *head = new student;
    strcpy(head->name,"erdinc");
    head->grade = 90;
    head->next = NULL;
    //assign first element
    student *tempDel;
    
    student *temp;
    
    int operation = 5;
    char name[15];
    
    
    while(operation){
        temp = head;

        cout<<"**********************************************"<<endl;
        cout<<"*        Choose Operation                    *"<<endl;
        cout<<"* -1- Append from end                        *"<<endl;
        cout<<"* -2- Print                                  *"<<endl;
        cout<<"* -3- Delete                                 *"<<endl;
        cout<<"* -4- Append from beginning                  *"<<endl;
        cout<<"* -0- Exit                                   *"<<endl;
        cout<<"**********************************************"<<endl<<endl;

        
        cin>>operation;

        switch (operation) {
            case 1:
                while(temp->next){
                    temp = temp->next;//skip till last element
                    
                }
                temp->next = new student;
                temp = temp->next;
                temp->next = NULL;
                cout<<"Enter name of the student:"<<endl;
                cin>>name;
                strcpy(temp->name, name);
                cout<<"Enter the grade:"<<endl;
                cin>>temp->grade;
                //append at end
                cout<<"*  Element has been appended *"<<endl<<endl;
                break;
            case 2:
                while(temp){
                    
                    cout<<"Name:"<<temp->name<<endl;
                    cout<<"Grade:"<<temp->grade<<endl;
                    cout<<"******************************"<<endl;
                    temp = temp->next;
                }
                cout<<"*********End of list**********"<<endl<<endl<<endl;
                break;
            case 3:
                cin>>name;
                while(strcmp(temp->next->name, name) != 0 && temp->next->next){
                    temp = temp->next;//skip till find the element
                
                }
                if(strcmp(temp->next->name, name) == 0){
                    
                    tempDel = temp->next;
                    temp->next = tempDel->next;
                    delete tempDel;
                    cout<<"*  Element has been deleted *"<<endl<<endl;
                }
                else{cout<<"*Element could not be found!*";}
                
                
                
                
                //delete
                break;
                
            case 4:
                temp = new student;
                temp->next = head;
                head = temp;
                cout<<"Enter name of the student:"<<endl;
                cin>>name;
                strcpy(temp->name, name);
                cout<<"Enter the grade:"<<endl;
                cin>>temp->grade;

                
                
                
                //append at beginning
                break;
                
            case 5:
                temp = new student;
                
                //insert
                
                
                
                
            default:
                break;
        }
        
    }
    
        
        
        
        
    
    getchar();
    return 0;
    
}
