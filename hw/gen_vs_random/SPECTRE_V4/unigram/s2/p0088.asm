.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rax]
add sil, al
cmovnb edx, edx
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], si
mov esi, edx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
sub rax, 1914398062
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
test eax, -31785616
cmovno bx, dx
cmovbe eax, esi
and rdi, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdi]
test eax, -651442446
adc rsi, 82
xchg esi, ebx
test bl, -29
cmovz ecx, edi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
bswap rsi
and rcx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rcx]
xor dil, 37
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
cmovb rdi, rbx
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
xor bl, 126
movsx dx, al
bts rsi, rbx
add bl, 102 # instrumentation
cmovnp edx, ebx
test ax, -6841
mov ebx, edi
imul edx, edi
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx]
cmp cl, 49
xor cl, -15
xor rax, -111081832
bts ebx, 189
btr rax, 187
test esi, ebx
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], bx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 98
sbb ebx, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
