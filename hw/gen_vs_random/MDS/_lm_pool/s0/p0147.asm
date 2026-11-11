.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -78
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
xor al, 9
or cl, bl
or rbx, -77
and dl, dil
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
xor rbx, 89
or rsi, 56
or sil, bl
xor cl, al
or al, 37
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
