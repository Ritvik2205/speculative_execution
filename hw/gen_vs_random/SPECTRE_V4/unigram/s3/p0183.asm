.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rdx, rbx
add esi, -5
sbb ebx, 13
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
xor rdx, 10
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 13
cmovnbe rdx, rax
or cx, di
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
sub rax, -701741274
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 85
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
bt ecx, 78
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rsi, 100
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rcx]
xor dil, dil
bts ebx, ebx
and rsi, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rsi]
xchg rdi, rbx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
cmovnb eax, ebx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
xor dl, 83
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
add al, cl
imul rbx, rax
add cl, 106 # instrumentation
cmovnp rsi, rdi
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
imul rdi
imul eax
and rax, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], si
xor ecx, edi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
sbb edx, 58
cmp cl, sil
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
add cl, 106 # instrumentation
cmovnp rdx, rdi
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], di
sub bl, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
