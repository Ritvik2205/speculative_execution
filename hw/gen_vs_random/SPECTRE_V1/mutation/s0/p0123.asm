.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rsi, rsi
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
xchg sil, sil
cmp sil, al
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
setnb cl
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
add cl, 32 # instrumentation
sbb bl, cl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 4
xor eax, -764881786
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 16
xor eax, 1034314125
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
