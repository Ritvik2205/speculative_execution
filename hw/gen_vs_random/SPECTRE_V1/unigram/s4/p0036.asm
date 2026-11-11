.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], di
setno dl
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], -75
bts rdi, 83
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], esi
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
test bx, bx
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
mov dl, 61
lea rdx, qword ptr [rdx + rcx + 49]
add sil, -127 # instrumentation
movzx esi, al
cmovns rax, rax
add al, 98 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 53
lea rsi, qword ptr [rax]
cwde
add cl, -26 # instrumentation
cmovnp ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
