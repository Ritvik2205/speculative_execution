.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, al
and esi, 32
xor al, 34
test esi, 425331143
xor rdi, -9
xor dl, -59
or sil, bl
test sil, bl
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
or al, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
