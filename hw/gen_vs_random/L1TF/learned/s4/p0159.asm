.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 84
lea ax, qword ptr [rax + rcx]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xor cl, dl
jmp .bb_0.2
.bb_0.2:
lea bx, qword ptr [rdx]
jmp .bb_0.3
.bb_0.3:
add bl, -113 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
cmp rdi, 30
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
