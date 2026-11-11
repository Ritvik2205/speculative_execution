.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dl
and cl, bl
and rax, -109
and rax, 1994547909
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 33
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xor ax, -16232
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
test sil, 29
xor cx, 113
sub al, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
