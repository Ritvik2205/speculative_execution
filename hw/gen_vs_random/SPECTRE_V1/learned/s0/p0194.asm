.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
lea ax, qword ptr [rsi]
and al, bl
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
add sil, 2
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
