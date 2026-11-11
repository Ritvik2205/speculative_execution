.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
btr ecx, esi
test bl, -9
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
xor dil, -3
xor edx, 17
and eax, 33
bts rax, 77
btr edx, eax
xor dil, -124
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and sil, -69
not dil
test al, sil
and rsi, 54
xor rax, -270810088
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
