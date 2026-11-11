.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 41
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
jmp .bb_0.1
.bb_0.1:
or dil, bl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
or cl, 119
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and bl, 68
test dil, cl
jmp .bb_0.3
.bb_0.3:
test dl, -95
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 2
test rcx, -613256812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
