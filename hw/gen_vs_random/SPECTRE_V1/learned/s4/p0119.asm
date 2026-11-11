.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
xchg sil, sil
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40
cmovl rsi, rsi
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
setnb cl
cmp sil, al
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 32 # instrumentation
sbb bl, cl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 4
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 66
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
xor rsi, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
