.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bx, dx
btc rax, rcx
and eax, -784085938
sbb cl, sil
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
btr esi, 227
bt rdi, 41
and rsi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -61
xor edi, 127
add al, 91 # instrumentation
adc al, cl
bts edx, 116
bt bx, 38
and dil, bl
or dx, cx
cmp eax, -813838876
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
and sil, -84
or rdi, rbx
dec ax
cmovl si, si
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 26
xor bl, cl
and rdx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdx]
cmovnbe eax, edi
and rdi, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rdi]
inc ax
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
cmovnp rcx, rbx
add dil, -99 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], cx
btc rdx, rax
cmovbe cx, cx
add ebx, -57
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 23
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
xor al, -82
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rax
cmovnb rbx, rsi
imul ax, bx
sub al, dil
add cl, cl
mov rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
