.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -95 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
sub al, -75
btc rdx, rcx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
jmp .bb_0.2
.bb_0.2:
sbb si, dx
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dil
xor dil, cl
imul rcx, rax, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
