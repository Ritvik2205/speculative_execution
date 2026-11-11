.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -78
not al
and ax, 5001
xor al, cl
and dl, -73
or sil, -49
and dil, 125
or al, bl
bts eax, 222
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
xor al, 34
xor bl, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
