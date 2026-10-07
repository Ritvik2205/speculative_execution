.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx + rsi + 8931] 
and rax, 0b1111111111111 # instrumentation
lfence
neg dword ptr [r14 + rax] 
and rax, 0b1111111111111 # instrumentation
lfence
inc qword ptr [r14 + rax] 
and rsi, 0b1111111111111 # instrumentation
lfence
or rdi, qword ptr [r14 + rsi] 
cmp edi, esi 
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax 
add cl, 126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
lfence
adc word ptr [r14 + rdi], cx 
add bl, -93 
jmp .bb_0.1 
.bb_0.1:
xor bl, al 
setz al 
lea rax, qword ptr [rsi + rdx] 
mul dil 
add cl, -117 # instrumentation
lea rbx, qword ptr [rcx] 
lea ax, qword ptr [rbx + rax] 
cmovs rax, rdi 
and rsi, 0b1111111111111 # instrumentation
lfence
mul qword ptr [r14 + rsi] 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
