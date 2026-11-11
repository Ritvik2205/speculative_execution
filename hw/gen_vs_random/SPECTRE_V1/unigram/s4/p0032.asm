.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
nop
lea rdi, qword ptr [rdx]
cmovb si, bx
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ecx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, -98
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], si
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 35
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
lea rcx, qword ptr [rsi + rsi + 96]
and rcx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rcx]
and dil, sil
add dil, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
