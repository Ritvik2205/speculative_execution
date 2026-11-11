.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp cx, si
cmovnb esi, edx
adc bl, 89
or cl, bl
or cl, dl
and rdx, 78
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
adc bl, 89
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rbx]
cmp al, dl
cmovnz bx, cx
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
btc dx, 119
imul bl
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
cmovp si, si
sub dl, al
not dl
or cl, dl
movsx edi, bx
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 11
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
add sil, 110
sub al, sil
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
xor bx, cx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdi
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
imul dx
cmp sil, sil
mov di, si
or di, ax
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdx]
cmovs rdi, rax
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
movsx rsi, bx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 52
movzx rcx, si
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
