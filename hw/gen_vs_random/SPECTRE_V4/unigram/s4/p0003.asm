.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
mov dl, 81
adc rax, rdx
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 27
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ebx
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rcx
and bl, dil
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax], 33
or edi, -78
and rax, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdx]
cmovnle rdi, rdi
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdi
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
cmp sil, 127
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rbx
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
cmovl edx, edi
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], ebx
test bx, 24072
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
cmovp eax, edx
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
add rax, 114
movsx rbx, cx
test dil, bl
add sil, -8 # instrumentation
xchg dl, sil
and rbx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rbx]
cmovl rdx, rdi
btr rsi, rsi
test rbx, 1219566903
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
neg rdi
cmovo cx, si
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
xor rbx, rax
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1958762209
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
btc eax, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
