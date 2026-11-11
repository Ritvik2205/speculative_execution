.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
xor cx, ax
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 11
test dl, al
neg rax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
btr rcx, 30
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb sil, 126
lea dx, qword ptr [rcx + rbx + 71]
mov bl, dl
add bl, 40 # instrumentation
lea bx, qword ptr [rdi + rdi]
setle cl
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 43
sub cx, di
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
