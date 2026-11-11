.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
cmp eax, -1538116527
dec bl
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
adc ax, 17267
imul si, ax, -75
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -109
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
cmp eax, 1521417271
sub sil, -35
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
btr rdx, rsi
mul dx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
cmovnbe edi, esi
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
add al, -17 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
bts rdi, 49
add bl, -59
cmovnbe eax, esi
cmp esi, 123
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -41
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
add dl, al
not rcx
btr dx, 245
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
cmovs bx, di
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
btr di, cx
not dx
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
add rax, -1121139858
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rcx]
add al, -10 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
sbb bl, -75
cmovnb bx, bx
and ax, bx
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
bt ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
