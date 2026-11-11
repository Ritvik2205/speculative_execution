.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
xor cl, sil
test al, -32
sbb ecx, 69
sub cl, dil
cmp cl, 57
or sil, -44
xor bl, sil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
