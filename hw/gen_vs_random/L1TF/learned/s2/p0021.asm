.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -36 # instrumentation
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edx
add sil, -61
add al, 93
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
