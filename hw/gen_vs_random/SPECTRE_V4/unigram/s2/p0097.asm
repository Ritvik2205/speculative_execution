.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov rsi, rax
bt ebx, 228
btc si, 95
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
cmovnz ax, bx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], ax
cmovnbe rdx, rsi
cmovl rcx, rdx
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 60
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 12
cmovle rax, rbx
test ebx, edx
bts rdi, 36
sub bl, 17
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
add rdi, rax
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
sbb al, sil
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rbx], esi
cmovs ecx, ebx
not ebx
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dl
sbb si, 3
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
or esi, 50
test rcx, -2118888343
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
xor sil, 56
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
or rcx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
sub al, cl
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
cmp dl, dl
sub eax, 2030845821
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
cmovnbe rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
