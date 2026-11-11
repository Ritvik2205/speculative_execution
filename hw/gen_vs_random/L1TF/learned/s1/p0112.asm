.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 18
xor cl, bl
xor rax, -2072052278
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
dec al
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
lea si, qword ptr [rcx + rax + 44]
xor dx, 51
and dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
