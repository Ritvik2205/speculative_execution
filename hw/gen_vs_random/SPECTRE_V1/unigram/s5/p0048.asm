.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, al
sbb cl, 105
add cl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
sub rsi, rax
xor bl, al
or cl, -62
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add cx, bx
bswap rcx
add cl, 72 # instrumentation
cmovnl dx, bx
add al, -94 # instrumentation
cmovnle rdx, rax
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
mov ebx, eax
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
cmp rdx, -19
sub al, -82
or bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
