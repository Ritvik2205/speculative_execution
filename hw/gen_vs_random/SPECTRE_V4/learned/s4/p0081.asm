.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
and ax, 27239
movzx cx, sil
test dl, cl
cmp dil, cl
xor cl, bl
sub ax, -1908
or cl, cl
sub dl, cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
