.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
or cl, sil
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ecx
btr edx, ecx
and rax, 4
xor cl, sil
xor rcx, -2
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and bl, 68
and bl, 68
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
jmp .bb_0.1
.bb_0.1:
xor cl, sil
test al, 91
or sil, bl
xor dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
