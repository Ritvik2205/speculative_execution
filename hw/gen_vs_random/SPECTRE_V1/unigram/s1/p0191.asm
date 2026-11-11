.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
sbb bl, -41
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 90
and rax, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rax]
cmovnbe ax, di
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rax
sbb cl, cl
bts si, ax
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
xor dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
