.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rax
imul rsi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 94
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
test cl, -89
cmp si, 1
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 8
adc al, sil
and rdx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdx]
movzx dx, al
movzx ecx, bl
movzx ecx, cl
cmp cl, dil
test rcx, -2118888343
adc ax, ax
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
mov rbx, rdi
or sil, al
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
inc eax
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
btc rcx, rsi
btc si, 38
imul cl
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], bx
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rbx], cx
cmovnle dx, dx
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 27
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1
movzx ax, bl
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], eax
sbb bl, 57
cmovo rcx, rcx
cmovnb edx, esi
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
bt ax, 9
movzx rax, si
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rcx
and bl, cl
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
