.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 56 # instrumentation
lfence
cmovns edi, ecx 
lfence
or dl, cl 
lfence
setns dl 
lfence
cmovl rsi, rcx 
lfence
test edx, ebx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovo rax, qword ptr [r14 + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
sub al, byte ptr [r14 + rax] 
lfence
setno al 
lfence
movsx rdi, cx 
lfence
jnbe .bb_0.1 
jmp .exit_0 
.bb_0.1:
add dl, 83 # instrumentation
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnb cx, word ptr [r14 + rbx] 
lfence
and bl, al 
lfence
xor cl, 114 
lfence
cmovnbe si, bx 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock xor qword ptr [r14 + rax], -25 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
test word ptr [r14 + rsi], 6791 
lfence
test ecx, 729805876 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
