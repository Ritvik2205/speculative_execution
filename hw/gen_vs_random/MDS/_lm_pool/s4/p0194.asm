.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
not sil
test al, cl
test al, 66
bts rax, rdi
or al, bl
xor al, dl
and ax, 5001
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
test rdi, 81
or al, 37
and cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
