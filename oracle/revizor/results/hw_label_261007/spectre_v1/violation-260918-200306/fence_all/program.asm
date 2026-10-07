.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lfence
lock bts qword ptr [r14 + rbx], 4 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock xor byte ptr [r14 + rdi], dl 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and dword ptr [r14 + rdi], ebx 
lfence
btr di, 188 
lfence
mov bl, cl 
lfence
jnz .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lfence
lock bts qword ptr [r14 + rbx], 7 
lfence
or edi, 0b1000000000000000000000000000000 # instrumentation
lfence
bsr edi, edi 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
add ecx, dword ptr [r14 + rdx] 
lfence
mov al, al 
lfence
cmp ax, 23607 
lfence
or al, al 
lfence
setnp cl 
lfence
and dl, al 
lfence
lea rdi, qword ptr [rcx + rdi + 2044] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
mov word ptr [r14 + rdi], ax 
lfence
lea si, qword ptr [rdx] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
