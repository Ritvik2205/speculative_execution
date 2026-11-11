.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -14 # instrumentation
lea bx, qword ptr [rdx + rdi]
inc al
btc rdx, rbx
or al, -2
jmp .bb_0.1
.bb_0.1:
xor sil, 64
or di, 95
jmp .bb_0.2
.bb_0.2:
lea rdx, qword ptr [rax + rbx + 92]
dec al
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
imul ax, cx, 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
