.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -78
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 70
xor dil, sil
btc si, cx
and dl, dl
and rcx, 61
lea ax, qword ptr [rdx + rbx + 50836]
btr bx, dx
test dl, cl
jmp .bb_0.1
.bb_0.1:
or bl, cl
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
