.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
test eax, -251558852
imul rdx, rbx
cmovnle ebx, edx
test dil, -58
cmovl rcx, rax
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx], 99
and rax, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rax]
sbb dl, -62
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], bx
xor dl, dl
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
add cl, 122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rax]
adc dil, dil
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 76
and rcx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rcx]
bt ax, 145
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
sbb bl, dl
not ebx
cmovnb ax, bx
and rsi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
and cx, -117
or eax, ecx
cmovl rdi, rsi
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], bl
test sil, -119
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 1
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rbx], ax
neg cx
or al, cl
dec rdi
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
movsx rbx, ax
bswap ecx
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
cmp sil, 113
and rsi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rsi]
cmovz eax, edx
bt rax, 59
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
