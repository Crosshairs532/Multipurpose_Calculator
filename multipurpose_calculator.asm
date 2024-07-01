
.MODEL SMALL
.STACK 100H
.DATA

      


    ; OPTIONS -
            
            fdot dw 0ah,0dh,   "                =====================  $"
            project_name dw 0ah , 0dh,0ah , 0dh, "                Multi Purpose Calculator$"
            
            samsul dw 0ah, 0dh, "       Md. Samsul Arefin - 21301231             $"
            nawrin dw 0ah, 0dh, "       Jannatul Ferdous Nawrin - 21301494       $"
            hasib dw 0ah, 0dh,  "       Md Hasibul Islam Tohid - 20301298        $"
             
            
            happy dw 0ah , 0dh , 0ah , 0dh , 0ah, 0dh, "!!!!! Happy Coding !!!!!!!$"
            age db 0ah,0dh, "2.Choose Age Calculator? $"           
            Convertion db 0ah,0dh, "3.Choose Convertion Calculator? $"
            NumberC db 0ah,0dh, "4.Normal Calculator? $"
            COMBINATION DB 0AH , 0DH, "5.Calculate combination? $"             
            Choose db 0ah,0dh, "Choose One of the below $"
            inp db 0ah, 0dh,0ah, 0dh,0ah, 0dh, "Give Input : $" 
            six db 0ah , 0dh , "6.EXIT? $"

    
    ; OPTION END   



    ;COMBINATION 
            n dw ?
            r dw ?
            nsubr dw ?
            ans1 dw ? 
            ans11 dw ? 
            ans2 dw ?
            ans22 dw ? 
            ans3 dw ?
            ans33 dw ?   
            ans4 dw ?
            valueN  dw 0ah , 0dh , "Enter the value of n (0-8): $"
            valueR  dw 0ah , 0dh , "Enter the value of r (0-8): $"
            err dw 0ah , 0dh,  "r cannot be greater than n. $"
            TRYAGAIN dw 0ah , 0dh, "Try again?(y/n): $"    
            cant9 dw 0ah , 0dh , "Your Number can not be greater or equal to 9: $"    
            outp dw " C $"
            r1 dw ?          
            outp1 dw ": $"    
            mu1 dw ? 
            mu2 dw  ?   
            n1 dw ?  
     ; COMBINATION END 
     
     
     ;NUMBER CONVERSION
            temp dw ?           
            temp1 db 0 
            rem db ?
            quo db ?
            index dw ?
            deciarr db 1,2,4,8,16,32, 64
            binaryArr db 10 dup(0)
            bin db 10 dup(0)
            yesOrno db 0ah , 0dh,  "Do You want to continue(Y/N)? $"  
            decimalTobinary db 0ah,0dh, "3.1Choose Decimal To Binary Converter)? $"
            binaryTodecimal db 0ah,0dh, "3.2Choose Binary To Decimal Converter? $"
            InputDecimal dw 0ah , 0dh,  "Input Decimal value(00-99): $"
            biOutput dw 0ah, 0dh, "Output in Binary: $"             
            InputBinary dw 0ah , 0dh , "Input Binary value(max 7 digit): $"
            deciOutput dw 0ah, 0dh , "Output in Decimal: $"
            ERROR DW 0AH ,0DH , "OOPS ! NUMBER SHOULD BE 0/1 $"
            store db 10 dup(?)
                 
     ;NUMBER CONVERSION END 


 
 
    ; FACTORIAL
            arr db 10 dup(?) 
            num dw ?    
            result dw ?
            msg1 db 0ah, 0dh,  "Enter a number between 0 to 8: $" 
            msg2 db  0ah, 0dh, "Factorial: $"
            invalid_msg db 0ah , 0dh,  "Invalid input! Enter a number between 0 to 8: $"
            factorial db 0ah,0dh, "1.Choose Factorial(0-8)? $"        
    ; FACTORIAL END    
                                     
   
   
   
   
    ;AGE CALCULATOR
    

     cYear dw ?
     cMonth dw ?  
     cDay dw ?     
     cM1 db ?      
     dM1 db ?     
     DbM1 db ? 
     Dbd1 db ?      
     dYear dw ?
     dMonth dw ?  
     dDay dw ?      
     ansDay dw ? 
     ansMonth dw ? 
     ansYear dw ?      
     errM dw 0ah , 0dh, "Month cannot be greater than 12. for one Digit use 0 before it. $"
     errD dw 0ah , 0dh, "day cannot be greater than 31. for one digit use 0 before it. $"       
     EnterY dw 0ah , 0dh, "Enter Current Year: $"
     EnterM dw 0ah , 0dh, "Enter Current Month: $"
     EnterD dw 0ah , 0dh, "Enter Current Day: $"     
     EnterDY dw 0ah , 0dh, "Enter DOB Year: $"
     EnterDM dw 0ah , 0dh, "Enter DOB Month: $"
     EnterDD dw 0ah , 0dh, "Enter DOB Day: $"      
     year dw "years $"
     month dw "months $"
     day dw  "days $"     
     ageArr db 10 dup(0)
     
     yourBirth dw 0ah , 0dh, "Your Date of Birth is: $"
     
     
     manual dw 0ah , 0dh, "     * For one digit(month/day) use 0 before it. example: 01, 02....etc$"
    
    ;AGE CALCULATOR END
 
    ;Calculator
    

    operator: DB 0DH,0AH,"Enter operator (+,-,*,/,) : $"
    first_input: db 0dh,0ah,"Enter First No : $"
    second_input: db 0dh,0ah,"Enter Second No : $"
    rslt: db 0dh,0ah,"Result : $"
        
    
    ;Calculator
    
.CODE  
    MAIN PROC
        
        MOV AX, @DATA
        MOV DS, AX
        lea dx, fdot
        mov ah, 9 
        int 21h 
        
        lea dx, project_name
        mov ah , 9 
        int 21h
        
        mov dx, 0ah 
        mov ah , 2
        int 21h 
        
        mov dx ,0dh 
        mov ah , 2
        int 21h 
        
        lea dx, fdot
        mov ah, 9 
        int 21h 
                
        lea dx, samsul
        mov ah , 9 
        int 21h
        
        lea dx, nawrin
        mov ah , 9 
        int 21h
        
        lea dx, hasib
        mov ah , 9 
        int 21h
        
        lea dx, fdot
        mov ah , 9 
        int 21h
        
        
          
        
        MAIN_START:
                mov temp1, 0 
                mov cx,10 
                mov si , 0 
                cleanArray: 
                    
                    mov arr[si], 0
                    mov ageArr[si], 0
                    mov bin[si], 0
                    mov binaryArr[si], 0 
                    mov store[si],0
                    inc si
                    loop cleanArray 
                    mov si,0
        
                    
            lea dx, Choose
            mov ah , 9 
            int 21h
            
            ; options
            lea dx, factorial
            mov ah , 9 
            int 21h
            
            lea dx, age
            mov ah , 9 
            int 21h
            lea dx, Convertion
            mov ah , 9 
            int 21h
            lea dx, NumberC
            mov ah , 9 
            int 21h
            
            LEA DX, COMBINATION 
            MOV AH , 9 
            INT 21H
            
            LEA DX, six 
            MOV AH , 9 
            INT 21H  
            
            ; choose calculator
            lea dx , inp 
            mov ah, 9 
            int 21h 
            
            mov ah , 1 
            
            int 21h 
            sub al , 30h
            cmp al , 1
            je FACTORIALb
                
    
            cmp al, 2
            je AGEb
            
            cmp al ,3
            je CONVERTIONb
            
            cmp al , 4
            je ASMDC 
            
            
            CMP AL, 5
            JE COMBINATION_START
            
            cmp al , 6
            je EXIT
            
            FACTORIALb:
                mov ax, 0
                mov bx, 0 
                mov dx, 0 
                mov cx, 0
                mov si, 0
    
                
                START:   

                mov si,0
                
                ; Display message to enter a number
                    lea dx , msg1 
                    mov ah , 9 
                    int 21h 
                    
                    ; read a single digit from the user 
                    
                    mov ah , 1
                    int 21h 
                    sub al , 30h ; coverting to integer 
                    mov ah , 0 
                    mov num , ax ; storing the value 
                    
                    ; check if the input is valid 
                    cmp num , 9 
                    jge INVALID
                    
                    cmp num , 0 
                    je ZERO
                    
                    ; calculate factorial 
                    
                    mov ax, 1
                    mov cx , num 
                    
                    FACTORIAL_LOOP:
                        mul cx          
                        LOOP FACTORIAL_LOOP
                        
                    OUTPUT_FUNCTION:
                        MOV result , ax 
                        lea dx, msg2
                        mov ah , 9 
                        int 21h
                        mov ax, result
                        
                        mov dx , 0  ; dividend
                        mov bx , 10 ; divisor
                        mov si , 10
                        
                        vag:
                            cmp ax , 0 
                            je PRINT
                            div bx
                            add dl,  30h
                            
                            mov arr[si], dl
                            dec si 
                            cmp ax, 0
                            mov dl, 0  
                            jne vag 
                            
                                          
                    
                    mov bx, 0     
                    PRINT:
                    
                        cmp bx  , 10 
                        jg CHECK                     
                        mov dl , arr[bx]
                        mov ah , 2
                        int 21h
                        inc bx                    
                        jmp PRINT    
                                    
                        
                    CHECK:
                        lea dx , yesOrno
                        mov ah , 9 
                        int 21h 
                        
                        mov ah , 1
                        int 21h  
                        
                        ; check yes or no 
                        
                        cmp al , 59h 
                        je MAIN_START
                        
                        cmp al , 79h 
                        je  MAIN_START
                        
                        cmp al , 4Eh 
                        je EXIT
                        
                        cmp al , 6Eh
                        je EXIT 
                        
                    
                    ZERO:
                        lea dx, msg2
                        mov ah , 9 
                        int 21h 
                    
                        mov dx , 31h    ; 0! = 1 
                        mov ah ,2
                        int 21h
                        lea dx , yesOrno
                        mov ah , 9 
                        int 21h 
                        
                        mov ah , 1
                        int 21h  
                        
                        ; check yes or no 
                        
                        cmp al , 59h 
                        je MAIN_START
                        
                        cmp al , 79h 
                        je MAIN_START
                        
                        cmp al , 4Eh 
                        je EXIT
                        
                        cmp al , 6Eh
                        je EXIT 
                    
                      
                    
                    INVALID:
                    
                        LEA DX , invalid_msg
                        mov ah , 9 
                        int 21h 
                        
                        lea dx , yesOrno
                        mov ah , 9 
                        int 21h 
                        
                        mov ah , 1
                        int 21h  
                        
                        ; check yes or no 
                        
                        cmp al , 59h 
                        je YES
                        
                        cmp al , 79h 
                        je YES
                        
                        cmp al , 4Eh 
                        je EXIT
                        
                        cmp al , 6Eh
                        je EXIT      
                        
                        YES: 
                            jmp START
            ASMDC:
            
                asmd_start:
                    LEA DX, operator
                    MOV AH, 09H
                    INT 21H
                    ; Read operator from user
                    MOV AH, 01H
                    INT 21H
                    ; Check the operator and perform the corresponding operation
                    CMP AL, '+'
                    JZ addition
                    CMP AL, '-'
                    JZ subtraction
                    CMP AL, '*'
                    JZ multiplication
                    CMP AL, '/'
                    
                    JZ division
                    
                    TakeInput:
                    ; Take input from user and convert it to number
                    mov ah, 0
                    int 16h
                    mov dx, 0
                    mov bx, 1
                    cmp al, 0dh
                    je FormatInput
                    sub al, 30h
                    call DisplayDigit
                    mov ah, 0
                    push ax
                    inc cx
                    jmp TakeInput
                    
                    FormatInput:
                    ; Format input into a number
                    pop ax
                    push dx
                    mul bx
                    pop dx
                    add dx, ax
                    mov ax, bx
                    mov bx, 10
                    push dx
                    mul bx
                    pop dx
                    mov bx, ax
                    dec cx
                    cmp cx, 0
                    jne FormatInput
                    ret
                    
                    Display:
                    ; Display number digit by digit
                    mov ax, dx
                    mov dx, 0
                    div cx
                    call DisplayDigit
                    
                    mov bx, dx
                    mov dx, 0
                    mov ax, cx
                    mov cx, 10
                    div cx
                    mov dx, bx
                    mov cx, ax
                    cmp ax, 0
                    jne Display
                    ret
                    
                    DisplayDigit:
                    ; Display a single digit
                    push ax
                    push dx
                    mov dx, ax
                    add dl, 30h
                    mov ah, 2
                    int 21h
                    pop dx
                    pop ax
                    ret
                    Addition:
                    ; Display first number prompt
                        LEA DX, first_input
                        MOV AH, 09H
                        INT 21H
                        ; Take first number input
                        mov cx, 0
                        call TakeInput
                        push dx
                        ; Display second number prompt
                        LEA DX, second_input
                        MOV AH, 09H
                        INT 21H
                        ; Take second number input
                        mov cx, 0
                        call TakeInput
                        pop bx
                        
                        add dx, bx
                        push dx
                        ; Display result
                        LEA DX, rslt
                        MOV AH, 09H
                        INT 21H
                        mov cx, 10000
                        pop dx
                        call Display
                        jmp ask
                    
                    multiplication:
                    ; Multiplication operation
                        LEA DX, first_input
                        MOV AH, 09H
                        INT 21H
                        mov cx, 0
                        call TakeInput
                        push dx
                        LEA DX, second_input
                        MOV AH, 09H
                        INT 21H
                        mov cx, 0
                        call TakeInput
                        pop bx
                        mov ax, dx
                        mul bx
                        mov dx, ax
                        push dx
                        LEA DX, rslt
                        MOV AH, 09H
                        INT 21H
                        mov cx, 10000
                        pop dx
                        call Display
                        jmp ask
                    
                    subtraction:
                    ; Subtraction operation
                        LEA DX, first_input
                        MOV AH, 09H
                        INT 21H
                        mov cx, 0
                        call TakeInput
                        push dx
                        LEA DX, second_input
                        MOV AH, 09H
                        INT 21H
                        mov cx, 0
                        call TakeInput
                        pop bx
                        sub bx, dx
                        mov dx, bx
                        push dx
                        LEA DX, rslt
                        MOV AH, 09H
                        INT 21H
                        mov cx, 10000
                        pop dx
                        call Display
                        jmp ask
                    
                    division:
                    ; Division operation
                        LEA DX, first_input
                        MOV AH, 09H
                        INT 21H
                        mov cx, 0
                        call TakeInput
                        push dx
                        LEA DX, second_input
                        
                        MOV AH, 09H
                        INT 21H
                        mov cx, 0
                        call TakeInput
                        pop bx
                        mov ax, bx
                        mov cx, dx
                        mov dx, 0
                        mov bx, 0
                        div cx
                        mov bx, dx
                        mov dx, ax
                        push bx
                        push dx
                        LEA DX, rslt
                        MOV AH, 09H
                        INT 21H
                        mov cx, 10000
                        pop dx
                        call Display
                        pop bx
                        cmp bx, 0
                        je ask
                        jmp ask
                    
            
            
            
               
               
            CONVERTIONb:
                lea dx ,  decimalTobinary
                mov ah , 9 
                int 21h
                lea dx , binaryTodecimal
                mov ah , 9 
                int 21h  
                
                ;choose between DecToBi
                mov dx , 0ah 
                mov ah , 2 
                int 21h 
                mov dx , 0dh 
                mov ah , 2
                int 21h 
                
                mov ax , 0 
                mov bx , 0 
                mov cx , 0 
                mov dx , 0
                mov si , 0   
                 
                mov ah , 1
                int 21h 
                sub al , 30h            
                cmp al , 1
                je DeBinary
                cmp al , 2 
                je BiDecimal            
                jmp exit
            
            
            
                DeBinary:
                    lea dx , InputDecimal
                    mov ah, 9 
                    int 21h 
                     
                    ; first input  
                    mov ah,1
                    int 21h       
                    sub al,30h
                    mov ah,0  
                    
                    ; dividend 
                    mov dl, 0Ah 
                    mul dl  
                    mov dx , ax
                    mov temp, dx 
                    cmp temp , 0
                     
                    je FirstZero 
                    
                    ;second input
                    mov ah ,1
                    int 21h 
                    sub al, 30h 
                    mov ah , 0 
                    cmp ax , 0 
                    je Z_0 ; Z_0 => means zero block   
                  
                    add dx , ax 
                    mov ax , dx  
                      
                    mov si,0
                    ;lea si,binaryArr
                    bid:
                
                        cmp al,0
                        je ALLPRINT
                        mov bl,2
                        div bl 
                        add ah,30h
                                
                        mov binaryArr[si],ah
                        inc si
                        mov ah,0
                        jmp bid ; bid => binary to decimal
                
                    ALLPRINT:
                        lea dx , biOutput
                        mov ah , 9
                        int 21h 
                    
                    PrintBD:
                        cmp si,0 
                        jl ASK
                        mov dl,binaryArr[si]
                        mov ah,2
                        int 21h
                        dec si
                        jmp PrintBD ; PrintBD => printing Binary to decimal 
                    
                    FirstZero: 
                        ; second zero check 
                        mov ah ,1
                        int 21h 
                        sub al, 30h 
                        mov ah , 0 
                        cmp ax , 0 
                        je Z_0
                          
                      
                        add dx , ax 
                        mov ax , dx 
               
                      
                        mov si,0
                        ;lea si,binaryArr 
                        jmp bid ; bid => binary to decimal 
            
                    Z_0: 
         
                         
                        add dx , ax 
                        mov ax , dx 
                        cmp temp, 0
                        jne bid ; bid => binary to decimal
                        
                        lea dx , biOutput
                        mov ah , 9
                        int 21h 
                        
                        mov dl, 30h  
                        mov ah , 2
                        int 21h
                        
                        jmp ASK

                        
         
            
                BiDecimal:
                    lea dx ,  InputBinary
                    mov ah, 9 
                    int 21h 
                    
                    
                    mov si,0
                    ;lea si,bin
                    
                    Bide:
                        cmp si , 7 
                        jge new 
                        mov ah,1 ; input 
                        int 21h
                        cmp al,0dh ; enter                    
                        je new
                        
                        
                        CMP AL, 30H
                        JNE NOTzeroB
                        
                        CMP AL , 31H 
                        
                        JNE NOTone
                        
                                           
                        sub al,30h
                        mov bin[si],al
                        inc si
                         
                        jmp Bide 
                        
                        
                        
                        
                        
                  NOTone:
                    CMP AL , 30H
                    
                    JNE NOTbinary
    
                        sub al,30h
                        mov bin[si],al
                        inc si
                        jmp Bide              
                  NOTzeroB:
                        CMP AL ,31H
                        JNE NOTbinary
                   
               
                        sub al,30h
                        mov bin[si],al
                        inc si
                        jmp Bide      
    
                        
                        
                        
                        
                 NOTbinary:
                    LEA DX, ERROR
                    MOV AH , 9 
                    INT 21H 
                 
                    LEA DX , yesOrno
                    MOV AH , 9 
                    INT 21H
                    
                    
                    MOV AH , 1
                    INT 21H  
                    
                    ; check yes or no 
                    
                    cmp al , 59h 
                    je CONVERTIONb
                    
                    cmp al , 79h 
                    je CONVERTIONb
                    
                    cmp al , 4Eh 
                    je EXIT
                    
                    cmp al , 6Eh
                    je EXIT                
                      
                                         
                        
                        
                
                    new: ; got all the binary in a array 
                        mov index, si 
                        dec index
                        mov si,0    
                        ;lea si,bin ; problem 
                      
                        decimal: 
                            cmp si,7
                            je printDB
                 
                            mov bl, bin[si] 
                            cmp bl,1
                            je sum
                            jne no
                        no:
                            inc si 
                            dec index
                            jmp decimal
                        sum: 
                            mov di , index
                            mov dl,deciarr[di] ; 
                            add temp1,dl
                            dec index
                            inc si 
                            jmp decimal
                    
                        printDB:
                            lea dx , deciOutput
                            mov ah, 9 
                            int 21h
                            mov si,0
                        
                        quoprint: 
                
                            mov al,temp1 
                            mov ah,0
                            mov bl,10
                            div bl
                            
                            cmp al,0
                            jne remstore
                            
                            cmp al,0
                            je end 
                            
                            end:
                            
                                mov store[si],ah  
                               
                                pstore:
                                    cmp si,0
                                    jl ASK
                                    jge goPrint
                                    
                                    ASK:
         
                                        lea dx , yesOrno
                                        mov ah , 9 
                                        int 21h 
                                        
                                        mov ah , 1
                                        int 21h  
                                        
                                        ; check yes or no 
                                        
                                        cmp al , 59h 
                                        je MAIN_START
                                        
                                        cmp al , 79h 
                                        je MAIN_START
                                        
                                        cmp al , 4Eh 
                                        je EXIT
                                        
                                        cmp al , 6Eh
                                        je EXIT
                                         
                                    goPrint:
                                        mov dl,store[si]
                                        add dl,30h
                                        mov ah,2
                                        int 21h
                                        dec si
                                        jmp pstore
                             
                            
                            remstore:
                            
                             
                                mov store[si],ah
                                inc si
                                mov temp1,al
                                jmp quoprint
     
    
                    
                        JMP EXIT
        
        
            AGEb: 
            
                lea dx, manual 
                mov ah, 9
                int 21h 
                                
                lea dx , EnterY
                mov ah, 9
                int 21h
            
            Current_Date:
            
             
                YearInput: 
                
                    mov ah , 1 ; takinf fiursd input 
                    int 21h 
                    
                    sub al, 30h 
                    
                    mov ah , 0             
                    mov bx , 1000                
                    mul bx                 
                    mov cYear, ax ; 1000, 2000 
                    mov ax, 0 
                    
                    mov ah , 1   ; second input
                    int 21h
                    sub al, 30h  
                    
                    mov ah , 0 
                    mov bl , 100 
                    
                    mul bl 
         
                    add cYear, ax 
                     
                    mov ah ,1  ; third input 
                    int 21h 
                    mov ah, 0 
                    sub al, 30h 
                    mov bl , 10 
                    
                    mul bl 
                    
                    add cyear, ax
                    
                       
                    mov ax , 0 
                    
                    mov ah , 1    ; 4th 
                    int 21h 
                    sub al, 30h 
                    mov ah , 0 
                    
                    add cYear, ax 
                                   
    
                    
                MonthInput:
                    lea dx , EnterM
                    mov ah, 9 
                    int 21h
                    
                    mov ah , 1 ; takinf fiursd input 
                    int 21h 
                    
                    sub al, 30h
                    
                    mov cM1 , al 
                    
                     
                    
                    cmp al , 1
                    jg ERRORM
                    
                    
                    mov ah , 0             
                    mov bl , 10                
                    mul bl                 
                    mov cMonth, ax
                    mov ax, 0 
                    
                    mov ah , 1   ; second input
                    int 21h
                    sub al, 30h  
                    mov ah , 0 
                    
                    cmp al , 2
                    jg ERRORCHECKM
                    
                    cmp al,  0 
                    je err_for_zero
                    
                    add cMonth, ax
                    
                    jmp DayInput
                    
                    
                    err_for_zero:
                        cmp cM1, 0 
                        je ERRORM 
                        
                        mov ah, 0 
                        add cMonth, ax                    
                        jmp DayInput                        
                        
                    
                    
                    ERRORCHECKM: 
                    
                        cmp cM1, 1 
                        je ERRORM
                        
                        mov ah, 0 
                        add cMonth, ax                    
                        jmp DayInput
                    
                    ERRORM:
                        lea dx , errM
                        mov ah , 9 
                        int 21h 
                        
                        jmp MonthInput
                    
                    
                    
                DayInput:
                    lea dx , EnterD
                    mov ah, 9 
                    int 21h
                    
                    mov ah , 1 ; takinf fiursd input 
                    int 21h 
                    
                    sub al, 30h 
                    mov dM1 , al 
                    cmp al , 3
                    jg ERRORD
                    
                    mov ah , 0             
                    mov bl , 10                
                    mul bl                 
                    mov cDay, ax
                    mov ax, 0 
                    
                    mov ah , 1   ; second input
                    int 21h
                    sub al, 30h
           
                    cmp al , 1
                    jg ERRORCHECKD  
                    mov ah , 0 
                    add cDay, ax                
                                  
                    jmp DOB
                    
                    ERRORCHECKD:
                           cmp dM1 , 3 
                           je ERRORD
                           
                        mov ah, 0
                           
                        add cDay, ax                
                                  
                        jmp DOB
                    
                    ERRORD:
                        
                        lea dx , errD
                        mov ah , 9 
                        int 21h 
                        
                        jmp DayInput                
                


            DOB:

                lea dx ,EnterDY
                mov ah , 9 
                int 21h  
                   DOB_yearInput:
                    mov ah , 1 ; takinf fiursd input 
                    int 21h 
                    
                    sub al, 30h 
                    
                    mov ah , 0             
                    mov bx , 1000                
                    mul bx                 
                    mov dYear, ax ; 1000, 2000 
                    mov ax, 0 
                    
                    mov ah , 1   ; second input
                    int 21h
                    sub al, 30h  
                    
                    mov ah , 0 
                    mov bl , 100 
                    
                    mul bl 
         
                    add dYear, ax 
                     
                    mov ah ,1  ; third input 
                    int 21h 
                    mov ah, 0 
                    sub al, 30h 
                    mov bl , 10 
                    
                    mul bl 
                    
                    add dyear, ax
                    
                       
                    mov ax , 0 
                    
                    mov ah , 1    ; 4th 
                    int 21h 
                    sub al, 30h 
                    mov ah , 0 
                    
                    add dYear, ax 
                    
              
    
                  DOB_monthInput: 

                    lea dx , EnterDM
                    mov ah, 9 
                    int 21h
                    
                    mov ah , 1 ; takinf fiursd input 
                    int 21h 
                    
                    sub al, 30h 
                    mov Dbm1, al 
                    
                    cmp al , 1 
                    jg error_DOB_M  
                   
                    mov ah , 0             
                    mov bl , 10                
                    mul bl                 
                    mov dMonth, ax
                    mov ax, 0 
                    
                    mov ah , 1   ; second input
                    int 21h
                    sub al, 30h 
                    
                    cmp al , 2
                    jg error_DOB_CHECKM
                    
                    cmp al,  0 
                    je err_for_DOB_zero
                     
                    mov ah , 0 
         
                    add dMonth, ax
                    jmp DOB_dayInput
                    
                    
                   err_for_DOB_zero:
                        cmp DbM1, 0 
                        je error_DOB_M 
                        
                        mov ah, 0 
                        add dMonth, ax                    
                        jmp DOB_dayInput 
                    
                error_DOB_CHECKM:
                
                    cmp DbM1 , 1 
                    je error_DOB_M 
                    mov ah, 0                   
                    add dMonth, ax                
                    
                    jmp DOB_dayInput
                    
                    error_DOB_M:
                    
                        lea dx , errM
                        mov ah , 9 
                        int 21h 
                        
                        jmp DOB_monthInput                      
                    
                   DOB_dayInput: 
        
                        lea dx , EnterDD
                        mov ah, 9 
                        int 21h
                        
                        mov ah , 1 ; takinf fiursd input 
                        int 21h 
                        
                        sub al, 30h 
                        mov Dbd1 , al 
                        cmp al , 3
                        jg error_DOB_D
                        
                        mov ah , 0             
                        mov bl , 10                
                        mul bl                 
                        mov dDay, ax
                        mov ax, 0 
                        
                        mov ah , 1   ; second input
                        int 21h
                        sub al, 30h
                        
                        cmp al , 1
                        jg error_DOB_CHECKD  
                        mov ah , 0 
                        add dDay, ax                
                                      
                        jmp CALC
                    
                    error_DOB_CHECKD:
                           cmp Dbd1 , 3 
                           je error_DOB_D
                        mov ah, 0    
                        add dDay, ax                
                                  
                        jmp CALC
                    
                    error_DOB_D:
                        
                        lea dx , errD
                        mov ah , 9 
                        int 21h 
                        
                        jmp DOB_dayInput 



                CALC:
                    mov ax , cDay
                    mov bx , dDay
                    
                    cmp ax ,bx 
                    
                    jl BorrowDays
                    
                    sub ax , bx 
                    mov cDay, ax 
                    mov ansDay , ax 
                    
                    jmp MonthCalc
                    
                    
                    
                    Borrowdays:
                        dec cMonth   ; month borrwed. so Decrement
                        add ax , 30 ; adding 30 day from that
                        
                        
                        sub ax , bx 
                        mov cDay, ax 
                        
                        mov  ansDay, ax  ; example  44-15 = 29 
                    
               


                   MonthCalc:
                   
                    mov ax , cMonth 
                    mov bx , dMonth
                    
                    
                    cmp ax ,bx 
                    jl BorrowMonths
                    
                    sub ax, bx 
                    mov cMonth, ax 
                    mov ansMonth, ax 
                    jmp YearCalc
                    
                    
                    BorrowMonths:  ; example 3-12 = inv
                        dec cYear
                        add ax, 12    ; 15- 12 = 3 month 
                        
                        sub ax, bx
                        
                        mov cMonth, ax      
                        
                        mov ansMonth, ax  
                        
                   
                   
                   Yearcalc:
                    
                    mov ax , cYear 
                    mov bx , dYear
                    
                    sub ax, bx 
                    
                    mov cYear, ax 
                    mov ansYear, ax
                    
                    
                    
                    
                     
         PrintAge:
         
            mov dx ,0ah 
            mov ah ,2
            int 21h 
            mov dx, 0dh  
            mov ah , 2
            int 21h
            
            lea dx , yourBirth
            mov ah , 9 
            int 21h 
                         
            mov si, 0 
            
   
            
            AGEdiv:
                 
                mov ax , ansYear
                mov bl,  10 
                div bl
                
                mov ageArr[si], ah
                mov ah , 0  
                mov ansYear, ax 
                
                cmp al, 0 
                je printYear
                inc si
                
                
                jmp AGEdiv
                
                
                
                printYear:
                    cmp si , 0
                    jl MONTHblock
                    mov dl , ageArr[si] 
                    add dl ,30h 
                    mov ah , 2
                    int 21h 
                    
                    dec si 
                    
                    
                    jmp printYear
                    
                        
                    
                
                
            MONTHblock:
                lea dx , year
                mov ah , 9
                int 21h 
                mov si, 0 
                
                    MONTHdiv:
                     
                    mov ax , ansMonth
                    mov bl,  10 
                    div bl
                    
                    mov ageArr[si], ah
                    mov ah , 0  
                    mov ansMonth, ax 
                    
                    cmp al, 0 
                    je printMonth
                    inc si
                    
                    
                    jmp MONTHdiv
                    
                    
                    
                    printMonth:
                        cmp si , 0
                        jl DAYblock
                        mov dl , ageArr[si] 
                        add dl ,30h 
                        mov ah , 2
                        int 21h 
                        
                        dec si 
                        
                        
                        jmp printMonth
                        
                        
           DAYblock:
                lea dx, month 
                mov ah , 9
                int 21h  
                
                mov si, 0 
                
                    DAYdiv:
                     
                    mov ax , ansDay
                    mov bl,  10 
                    div bl
                    
                    mov ageArr[si], ah
                    mov ah , 0  
                    mov ansDay, ax 
                    
                    cmp al, 0 
                    je printDay
                    inc si
                    
                    
                    jmp DAYdiv
                    
                    
                    
                    printDay:
                        cmp si , 0
                        jl last
                        mov dl , ageArr[si] 
                        add dl ,30h 
                        mov ah , 2
                        int 21h 
                        
                        dec si 
                        
                        
                        jmp printDay                        
                        
                             
                        
                last:
                    lea dx , day
                    mov ah, 9 
                    int 21h 
                    
                    jmp ask             
                
            
               
            COMBINATION_START: 
    
                mov ax, 0
                mov bx, 0 
                mov dx, 0 
                mov cx, 0
                mov si, 0
                
                mov dl,0dh 
                mov ah,2
                int 21h
                
                mov dl,0ah 
                mov ah,2
                int 21h
                
                lea dx , valueN
                mov ah, 9 
                int 21h 
        
                mov ah,1
                int 21h     ;input for n
                mov ah , 0 
                mov n,ax
                sub n,30h
                mov n1,ax
                sub n1, 30h  
                cmp n , 0 
                je FZERO
                  
                ; checking if 9 
                cmp n , 9  
                je NINE
                jmp second
                                      
                FZERO:
                    mov n , 1 
                    jmp second
                    
                
                second:
                
                lea dx , valueR
                mov ah, 9 
                int 21h 
                
                mov ah,1    ;input for r
                int 21h
                mov ah , 0  
                mov r1, ax 
                sub r1, 30h
                cmp r1, 9
                je NINE  
                cmp ax , 30h
                je COMBINATION_ZERO
                 
                cmp ax , 30h
                jne NOTZERO 
                
                COMBINATION_ZERO: 
                
                    mov r, 1
                    MOV AX , N1 
                   
                    MOV NSUBR, AX
                    
                    jmp MAIN1 
                    
                NOTZERO:    
                    mov r,ax 
                    sub r,30h
                    mov ax,n                        
                    mov nsubr,ax 
                    mov ax,r
                    sub nsubr,ax    ;n-r
                    
                    ; calculate factorial of first digit  (n)
                    
                    mov ax, n1 
                    mov bx , r1
                     
                    
                    cmp ax , bx 
                    jl NLR
                
                    
                    
                
                MAIN1:
                    mov ax, 1
                    mov cx , n
                    
                    FL_LOOP:
                      mul cx          
                      LOOP FL_LOOP   
                     
                    mov ans1,ax
                    mov ans11, dx 
                     
                    ; calculate factorial of second digit (r)
                     
                    mov ax, 1
                    mov cx , r
                    
                    FL1_LOOP:
                      mul cx         
                      LOOP FL1_LOOP
                     
                    mov ans2,ax
                    mov ans22, dx                  
                     
                    ; calculate factorial of second digit (n-r which is nsubr)
                     
                    mov ax, 1
                    mov cx , nsubr
                    cmp cx , 0 
                    je ZERO_FACT
                                    
                    jmp FL2_LOOP
                                    
                    
                    ZERO_FACT:
                        mov  ans3, ax 
                        jmp R_nR
                    
                    FL2_LOOP:
                     mul cx         
                     LOOP FL2_LOOP
                     
                    mov ans3,   ax
                    mov ans33,  dx 
                    R_nR: 
                    
                    ; mul r!(ans2) and n-r!(ans3)      
                    
                    mov dx ,ans11 
                    mov ax ,ans1 
                    
                    mov bx , ans2
                    
                    div bx  
                    
                    
                    mov mu1 , ax
                    
                    mov dx,0
                    mov ax,mu1
                    mov bx,ans3
                    div bx
                    
                   
                    
                    mov ans4,ax;   we are not cosidering dx as we will only deal with upto 8! 
                    
                    
                    
                    
          
                    
                    ; output  
                    
                  mov dl,0dh 
                  mov ah,2
                  int 21h
                
                  mov dl,0ah 
                  mov ah,2
                  int 21h
                    
                  mov dx , n1 ;  
                  add dx , 30h
                  mov ah , 2
                  int 21h 
                  
                  lea dx , outp
                  mov ah, 9 
                  int 21h
                  mov dx , r1
                  add dx , 30h 
                  mov ah ,2
                  int 21h   
                  
                                  
                  
                  lea dx , outp1
                  mov ah, 9 
                  int 21h
                  ;add ans4,30h  
                  mov cl , 10 
                  mov ax , ans4
                   
                  PRINT_OUTPUT:
                    div cl
                    
                    mov dl , al 
                    add dl , 30h 
                    mov bl , ah  
                    mov ah , 2
                    int 21h
                    mov dl, bl
                    add dl ,30h  
                    mov ah , 2
                    int 21h
                lea dx , TRYAGAIN
                mov ah , 9 
                int 21h 
                
                mov ah , 1
                int 21h 
                
                
                cmp al , 59h 
                je MAIN_START
                cmp al , 79h 
                je MAIN_START
                
                cmp al , 4Eh 
                je exit
                
                cmp al , 6Eh 
                je exit        
                    
    
                       
                    
                        
            NINE:
                lea dx ,cant9
                mov ah, 9
                int 21h
                 
                
                lea dx , TRYAGAIN
                mov ah , 9 
                int 21h 
                
                mov ah , 1
                int 21h 
                
                
                cmp al , 59h 
                je MAIN_START
                cmp al , 79h 
                je MAIN_START
                
                cmp al , 4Eh 
                je EXIT
                
                cmp al , 6Eh 
                je EXIT
                
                
               
            NLR:
                lea dx , err
                mov ah , 9 
                int 21h
                lea dx , TRYAGAIN 
                mov ah , 9 
                int 21h 
                
                mov ah , 1
                int 21h 
                
                
                cmp al , 59h 
                je MAIN_START
                cmp al , 79h 
                je MAIN_START
                
                cmp al , 4Eh 
                je exit
                
                cmp al , 6Eh 
                je exit        
                                 
                
        
           
            
                
            EXIT:
            
                lea dx , happy
                mov ah , 9 
                int 21h 
            
            MOV AX, 4C00H
            INT 21H 
        
    MAIN ENDP
    END MAIN
