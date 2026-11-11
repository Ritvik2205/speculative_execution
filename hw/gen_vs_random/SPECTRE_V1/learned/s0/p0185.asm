.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, rdx
sbb esi, -4
setnb al
setnb al
xor dl, bl
sbb sil, 126
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
cbw
lea rdx, qword ptr [rdi + rcx + 38196]
btc rbx, rdx
test bl, cl
lea rsi, qword ptr [rdi]
or al, 29
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 71
dec dl
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], bx
lea edi, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
