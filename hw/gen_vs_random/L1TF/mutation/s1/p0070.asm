.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp edi, esi
add cl, 126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], cx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
add bl, -93
lea cx, qword ptr [rcx + rsi + 8931]
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rsi + rdx]
setz al
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
xor bl, al
add cl, -117 # instrumentation
lea rbx, qword ptr [rcx]
cmovs rax, rdi
mul dil
lea ax, qword ptr [rbx + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
