.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
sbb al, 33
xor dil, dil
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
lea bx, qword ptr [rax]
sub cl, sil
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 26
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
