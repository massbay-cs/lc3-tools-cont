; file: hello.asm
; commands to assemble and run program (Linux):
;   nasm -felf64 helloworld.asm && ld helloworld.o -o helloworld  
;   chmod +x hello
;   ./hello
;   echo $?
; 
; tutorial cs.lmu.edu/~ray/notes/nasmtutorial/

         global    _start

         section   .text
_start:
                                        ;  write(1, message, 13)
        mov     rax, 1                  ;  1 for write (system call)
        mov     rdi, 1                  ;  1 for stdout
        mov     rsi, message            ;  label provides address 
        mov     rdx, 14                 ;  bytes to send
        syscall                         ;  requests system call

                                        ; exit(0)
        mov     rax, 60                 ; 60 for exit (system call)
        mov     rdi, 0x002A             ; 42 is return value 
        syscall                         ; invoke operating system to exit

message:
        db      "Hello, World!", 0x0A   ; note the newline at the end

