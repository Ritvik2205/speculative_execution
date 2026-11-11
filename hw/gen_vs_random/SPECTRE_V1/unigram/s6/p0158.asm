.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, cl
inc rbx
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdi]
add bl, al
test bl, -8
sbb bl, 79
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rax
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
cmovnbe bx, cx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], esi
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
