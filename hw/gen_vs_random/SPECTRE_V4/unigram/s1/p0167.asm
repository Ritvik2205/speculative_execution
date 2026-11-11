.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, al
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
adc sil, -112
neg ecx
add al, 121 # instrumentation
movsx esi, dx
add bl, -52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rsi]
test rdi, -795635070
cmovnp edx, esi
cmp ecx, 98
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 56
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rdi]
or di, 0b1000000000000000 # instrumentation
bsf bx, di
and al, -28
bt ax, 145
mul cl
test cl, al
btr rax, rax
and di, -65
cmovnz eax, eax
add bl, -43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
neg rdx
imul rax, rbx
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 83
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 88
add dl, dl
imul bl
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
cmovnbe rdx, rcx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
adc dl, 95
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx], 44
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
sbb al, 31
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
xor rdx, 106
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], dil
cmovnp eax, ebx
or rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
