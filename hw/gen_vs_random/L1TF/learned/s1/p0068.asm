.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dl
and al, sil
jmp .bb_0.1
.bb_0.1:
test al, cl
inc bl
xor dl, 19
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
xor dil, -42
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sbb bl, -88
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
sub cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
