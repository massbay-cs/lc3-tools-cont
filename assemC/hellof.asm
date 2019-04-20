; file: hello.asm
; commands to assemble and run program (Linux):
;   nasm -felf64 hellof.asm && gcc hellof.o -o hellof  
;   chmod +x hello
;   ./hello
;   echo $?
; 
; tutorial cs.lmu.edu/~ray/notes/nasmtutorial/

         global    main
         extern    puts
         section   .text
main:
                                        ;  puts("Library call!");
        mov     rdi, message            ;  address for puts argument
        call    puts
        
                                        ; exit(0)
        mov     rax, 60                 ; 60 for exit (system call)
        mov     rdi, 0x002A             ; 42 is return value 
        syscall                         ; invoke operating system to exit

message:
        db      "Function Call!", 0      ; C string: terminate characters with 0

