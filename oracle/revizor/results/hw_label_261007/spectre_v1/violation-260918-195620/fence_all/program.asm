.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 73 # instrumentation
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnl di, word ptr [r14 + rdx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rdi], bl 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock or dword ptr [r14 + rbx], esi 
lfence
or ebx, 0b1000000000000000000000000000000 # instrumentation
lfence
bsr eax, ebx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
bt dword ptr [r14 + rdx], 1 
lfence
jnbe .bb_0.1 
jmp .exit_0 
.bb_0.1:
xor al, -41 
lfence
test edx, 1380346728 
lfence
setnl cl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
setb byte ptr [r14 + rbx] 
lfence
xor bl, bl 
lfence
mov ax, bx 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock adc byte ptr [r14 + rcx], 44 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock or byte ptr [r14 + rax], dl 
lfence
cmovp ax, di 
lfence
and bl, -121 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovl edi, dword ptr [r14 + rax] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
