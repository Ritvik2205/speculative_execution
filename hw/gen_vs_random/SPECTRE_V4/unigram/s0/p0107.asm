.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
cmp bl, sil
cmovz eax, ebx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], si
neg dx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
cmovnbe edi, edx
add di, -74
neg cl
mov rax, -8696242625349627833
sbb ax, -19255
and sil, -49
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], dil
bt edi, ebx
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 32
movsx ebx, si
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ebx
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
movsx edi, cl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edi, eax
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx], 24
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
add cl, -42 # instrumentation
adc al, cl
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
bt eax, 84
imul rsi
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
imul si, bx
add rdi, rax
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 51
sub edx, 82
cmovo ax, di
and rax, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
sbb di, -76
test si, 59
imul sil
test dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
