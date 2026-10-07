.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx + rsi + 8931] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
neg dword ptr [r14 + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
inc qword ptr [r14 + rax] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
or rdi, qword ptr [r14 + rsi] 
lfence
cmp edi, esi 
lfence
or rax, 0b1000000000000000000000000000000 # instrumentation
lfence
bsr rbx, rax 
lfence
add cl, 126 # instrumentation
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
adc word ptr [r14 + rdi], cx 
lfence
add bl, -93 
lfence
jmp .bb_0.1 
.bb_0.1:
xor bl, al 
lfence
setz al 
lfence
lea rax, qword ptr [rsi + rdx] 
lfence
mul dil 
lfence
add cl, -117 # instrumentation
lfence
lea rbx, qword ptr [rcx] 
lfence
lea ax, qword ptr [rbx + rax] 
lfence
cmovs rax, rdi 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
mul qword ptr [r14 + rsi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
