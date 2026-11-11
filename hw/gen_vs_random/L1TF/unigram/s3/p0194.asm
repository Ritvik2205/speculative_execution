.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ecx, eax
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], al
and ax, di
add dil, al
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], dx
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and bx, cx
sub al, 25
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 22
xor dl, -91
bt rdx, rcx
mov rbx, 28
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
