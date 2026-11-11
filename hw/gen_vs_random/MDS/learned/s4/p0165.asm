.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edi
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
test al, cl
test bl, dil
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
test dl, dil
xor rcx, 71
and cx, -8
or rdi, -11
or rax, -1523798580
test al, sil
test dil, -80
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
