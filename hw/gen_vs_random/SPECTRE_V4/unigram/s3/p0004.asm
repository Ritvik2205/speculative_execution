.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg dx, bx
mov di, 65
mul rcx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rbx
cmovb bx, si
cmovnp ecx, eax
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
add bl, -43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
cmovl rax, rcx
cmovnl cx, bx
btr bx, 11
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], bx
adc dil, 38
sub esi, ecx
xor sil, cl
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
sbb sil, bl
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rsi
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 96
and al, dl
xor cl, 13
adc dx, 68
or cl, bl
and ax, ax
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 1
test rcx, 92
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
cmovl eax, ebx
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
and edi, -102
test sil, 68
cmovnb rax, rdi
bts rdi, rcx
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
cmovnb ebx, edi
and bx, dx
cmp dl, sil
neg rbx
sbb esi, edx
mov cl, 14
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
add dl, 81 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edi
and di, -34
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
