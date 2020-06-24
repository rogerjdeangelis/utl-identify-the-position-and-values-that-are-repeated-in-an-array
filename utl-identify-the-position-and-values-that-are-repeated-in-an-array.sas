Identify the position and values that are repeated in an array                                                            
                                                                                                                          
Index       2     4               1 repeats                                                                               
%let lst=0, 1, 2, 1, 3, 4, 2, 2                                                                                           
                                                                                                                          
github            3           7  8   2. repeats                                                                           
https://tinyurl.com/y9mw7ofj                                                                                              
https://github.com/rogerjdeangelis/utl-identify-the-position-and-values-that-are-repeated-in-an-array                     
                                                                                                                          
   Solutions                                                                                                              
       a. sas normalize and sort                                                                                          
       b. python                                                                                                          
                                                                                                                          
stackoverflow                                                                                                             
https://tinyurl.com/y86yksje                                                                                              
https://stackoverflow.com/questions/62556948/lookup-function-for-repeated-elements-in-an-array                            
                                                                                                                          
/*_                   _                                                                                                   
(_)_ __  _ __  _   _| |_                                                                                                  
| | '_ \| '_ \| | | | __|                                                                                                 
| | | | | |_) | |_| | |_                                                                                                  
|_|_| |_| .__/ \__,_|\__|                                                                                                 
        |_|                                                                                                               
*/                                                                                                                        
                                                                                                                          
%let lst=0, 1, 2, 1, 3, 4, 2, 2;                                                                                          
                                                                                                                          
/*           _               _                                                                                            
  ___  _   _| |_ _ __  _   _| |_                                                                                          
 / _ \| | | | __| '_ \| | | | __|                                                                                         
| (_) | |_| | |_| |_) | |_| | |_                                                                                          
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                         
                |_|                                                                                                       
  __ _     ___  __ _ ___                                                                                                  
 / _` |   / __|/ _` / __|                                                                                                 
| (_| |_  \__ \ (_| \__ \                                                                                                 
 \__,_(_) |___/\__,_|___/                                                                                                 
                                                                                                                          
*/                                                                                                                        
                                                                                                                          
  ITM    POSITION OF REPEATS                                                                                              
                                                                                                                          
   1      2   * second position in list                                                                                   
   1      4   * fourth position in list                                                                                   
                                                                                                                          
   2      3                                                                                                               
   2      7                                                                                                               
   2      8                                                                                                               
;                                                                                                                         
SAS                                                                                                                       
RULES  (only 1 and 2 have repeats                                                                                         
                                                                                                                          
           POSITIONS of REPEATS                                                                                           
         ======================                                                                                           
                                                                                                                          
            2     4                                                                                                       
%let lst=0, 1, 2, 1, 3, 4, 2, 2;                                                                                          
               3           7  8                                                                                           
/*                                                                                                                        
_                    _   _                                                                                                
| |__     _ __  _   _| |_| |__   ___  _ __                                                                                
| '_ \   | '_ \| | | | __| '_ \ / _ \| '_ \                                                                               
| |_) |  | |_) | |_| | |_| | | | (_) | | | |                                                                              
|_.__(_) | .__/ \__, |\__|_| |_|\___/|_| |_|                                                                              
         |_|    |___/                                                                                                     
*/                                                                                                                        
                                                                                                                          
Python has a 0 offset                                                                                                     
                                                                                                                          
FROMPY=[[1, 3], [2, 6, 7]]                                                                                                
                                                                                                                          
   0 offset FROMPY=[[1, 3], [2, 6, 7]]                                                                                    
                                                                                                                          
   1 offset FROMPY=[[2, 4], [3, 7, 8]]                                                                                    
                                                                                                                          
 WORK.WANT total obs=5                                                                                                    
                                                                                                                          
   ITM    SLOT                                                                                                            
                                                                                                                          
    1       2                                                                                                             
    1       4                                                                                                             
    2       3                                                                                                             
    2       7                                                                                                             
    2       8                                                                                                             
                                                                                                                          
/*         _       _   _                                                                                                  
 ___  ___ | |_   _| |_(_) ___  _ __  ___                                                                                  
/ __|/ _ \| | | | | __| |/ _ \| '_ \/ __|                                                                                 
\__ \ (_) | | |_| | |_| | (_) | | | \__ \                                                                                 
|___/\___/|_|\__,_|\__|_|\___/|_| |_|___/                                                                                 
  __ _     ___  __ _ ___                                                                                                  
 / _` |   / __|/ _` / __|                                                                                                 
| (_| |_  \__ \ (_| \__ \                                                                                                 
 \__,_(_) |___/\__,_|___/                                                                                                 
                                                                                                                          
*/                                                                                                                        
                                                                                                                          
%let lst=0, 1, 2, 1, 3, 4, 2, 2;                                                                                          
                                                                                                                          
data have;                                                                                                                
  do itm=&lst;                                                                                                            
     pos=sum(pos,1);                                                                                                      
     output;                                                                                                              
  end;                                                                                                                    
run;quit;                                                                                                                 
                                                                                                                          
proc sort data=have out=want nouniquekey;                                                                                 
by itm;                                                                                                                   
run;quit;                                                                                                                 
                                                                                                                          
/*                                                                                                                        
 _                    _   _                                                                                               
| |__     _ __  _   _| |_| |__   ___  _ __                                                                                
| '_ \   | '_ \| | | | __| '_ \ / _ \| '_ \                                                                               
| |_) |  | |_) | |_| | |_| | | | (_) | | | |                                                                              
|_.__(_) | .__/ \__, |\__|_| |_|\___/|_| |_|                                                                              
         |_|    |___/                                                                                                     
                                                                                                                          
Your nested loop results in O(n ^ 2) in time complexity. You can instead create a dict of                                 
lists to map indices to each label, and extract the sub-lists of the dict only if the length of                           
the sub-list is greater than 1, which reduces the time complexity to O(n):                                                
*/                                                                                                                        
                                                                                                                          
                                                                                                                          
%symdel lst cnt first second frompy / nowarn;                                                                             
                                                                                                                          
%let lst=0, 1, 2, 1, 3, 4, 2, 2;                                                                                          
                                                                                                                          
%utl_submit_py64_38("                                                                                                     
import io;                                                                                                                
import pyperclip;                                                                                                         
def get_locations(labels):;                                                                                               
.   positions = {};                                                                                                       
.   for index, label in enumerate(labels):;                                                                               
.       positions.setdefault(label, []).append(index);                                                                    
.   return [indices for indices in positions.values() if len(indices) > 1];                                               
output = io.StringIO();                                                                                                   
print(get_locations([&lst]),file=output,end='');                                                                          
output = output.getvalue();                                                                                               
pyperclip.copy(output);                                                                                                   
output.close();                                                                                                           
",return=fromPy);                                                                                                         
                                                                                                                          
%put &=frompy;                                                                                                            
                                                                                                                          
                                                                                                                          
proc datasets lib=work;                                                                                                   
  delete want;                                                                                                            
run;quit;                                                                                                                 
                                                                                                                          
data want;                                                                                                                
                                                                                                                          
   * parse the sublists out of frompty;                                                                                   
   if _n_=0 then do; %dosubl(%nrbquote(                                                                                   
                                                                                                                          
     %let cnt=%unquote(%qsysfunc(countw(%superq(lst))));                                                                  
     %put &=lst;                                                                                                          
     %put &=cnt;                                                                                                          
                                                                                                                          
     data _null_;                                                                                                         
                                                                                                                          
       retain frompy "&frompy";                                                                                           
       first=compress(scan(frompy,1,"]"),"[[");                                                                           
       second=substr(compress(scan(frompy,2,"]"),"[["),3);                                                                
       call symputx("first",first,"G");                                                                                   
       call symputx("second",second,"G");                                                                                 
                                                                                                                          
     run;quit;                                                                                                            
                                                                                                                          
     /* first  = %strstr(1, 3);                                                                                           
        second = %str(2, 6, 7);                                                                                           
     */                                                                                                                   
                                                                                                                          
     ));                                                                                                                  
                                                                                                                          
     array lst[&cnt] n1-n&cnt (&lst);                                                                                     
                                                                                                                          
   end;                                                                                                                   
                                                                                                                          
   retain itm;                                                                                                            
                                                                                                                          
   do pos=&first;                                                                                                         
     slot=pos+1;                                                                                                          
     itm = lst[pos+1];                                                                                                    
     output;                                                                                                              
   end;                                                                                                                   
                                                                                                                          
   do pos=&second;                                                                                                        
     slot=pos+1;                                                                                                          
     itm = lst[pos+1];                                                                                                    
     output;                                                                                                              
   end;                                                                                                                   
                                                                                                                          
   keep itm slot;                                                                                                         
                                                                                                                          
run;quit;                                                                                                                 
                                                                                                                          
