.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
xor rsi, rax
xchg rbx, rdx
movsx rdx, bx
dec rsi
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
cmovnle edx, ebx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdx]
sbb dl, -99
and cx, 17
mov rsi, 32
cmp cl, dil
imul ax, dx
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and al, bl
cmovb esi, ebx
sbb al, 123
cmp rcx, 69
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], edi
xor ax, 28088
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
imul esi, ebx
add edx, eax
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
add al, -32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rcx]
imul cl
or al, -71
or dil, 35
or bl, bl
cmovp dx, cx
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rsi
sbb rax, 183833426
add dl, -10 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
cmovnp dx, di
sbb dx, 32
cmovnp si, di
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 88
movsx edx, cl
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 51
sub ax, 24441
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
