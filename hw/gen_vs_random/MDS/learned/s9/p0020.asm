.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -39
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
xor sil, -14
and sil, -9
test al, 127
or rax, -1561934807
bts rdx, rbx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
xor al, 99
xor rdi, -9
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
bts rbx, 25
or dil, -76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
