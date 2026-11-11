.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -92
xor al, 16
and rcx, rsi
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and dl, dil
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
setb al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
