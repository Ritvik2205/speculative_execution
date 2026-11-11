.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
xchg sil, dil
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
sbb bx, 64
add al, 56
and bl, dl
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rbx + rsi]
and rax, 1163013815
or al, -48
lea dx, qword ptr [rbx + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
