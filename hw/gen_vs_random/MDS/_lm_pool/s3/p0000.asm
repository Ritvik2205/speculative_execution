.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, 189
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
or eax, ecx
and cl, al
test dil, dl
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
test rcx, -613256812
test dil, bl
test edx, -1561252782
and dl, dil
btc ax, bx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
