.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, rdx
sbb esi, -4
setnb al
sbb al, bl
xor dl, bl
sbb sil, 126
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
cbw
lea rdx, qword ptr [rdi + rcx + 38196]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 26
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 87
cmovle di, di
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 11
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], -58
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
xchg rdx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
