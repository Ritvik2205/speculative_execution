.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp esi, 123
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
or rsi, 73
xor cl, -73
bt rbx, rbx
and rdi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdi]
sbb edx, eax
sbb cl, 12
test cl, cl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
and rdx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdx]
cmovo eax, eax
and rdx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rdx]
sub rcx, 126
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rdi
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], ax
imul edi, eax, 40
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rax, rdi
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rax
cmovbe rdi, rbx
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 74
xor cl, -15
not dx
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
bt dx, 81
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
adc sil, -112
add cl, 35 # instrumentation
cmovnb rbx, rcx
cmovle dx, dx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 22
and rax, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 57
cmovnp eax, eax
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
bswap ecx
imul dx, si, 49
sbb bl, bl
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 66
cmp bl, 12
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 85
test rdx, -1074289902
sub bl, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
