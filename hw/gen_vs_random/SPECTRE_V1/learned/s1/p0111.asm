.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, rdx
sbb esi, -4
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40
cmp ax, 23607
xor dl, bl
sbb sil, 126
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
cbw
lea rdx, qword ptr [rdi + rcx + 38196]
xor ax, -2537
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdx]
mov rdx, 82
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 16
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
cmovs rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
