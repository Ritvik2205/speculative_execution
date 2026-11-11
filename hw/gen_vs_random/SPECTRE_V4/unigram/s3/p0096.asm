.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdi]
cmovnp edx, edx
and rax, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rax]
movzx edi, dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
mul rbx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
xor bl, 93
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
add cl, dil
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
cmovnz edx, ecx
sub rdx, 22
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], si
cmovno eax, edx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
cmovnp rax, rcx
cmovnbe rcx, rcx
xor edi, 43
inc rax
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rdx
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
test dil, 58
cmovle ax, dx
add cl, 8 # instrumentation
adc cl, dl
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
add dl, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
cmp al, -23
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
cmovnbe edx, ebx
add bl, -109 # instrumentation
sbb edx, 92
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 53
xchg al, cl
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rax
and cl, dil
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
add cl, -42 # instrumentation
adc sil, al
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
dec dx
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
mov rsi, 44
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi], 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
