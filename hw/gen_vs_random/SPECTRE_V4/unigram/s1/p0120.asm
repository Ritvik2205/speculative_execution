.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 23
cmovz rsi, rax
cmp sil, sil
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], ax
sub bx, 43
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rbx]
sub al, dil
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
movsx esi, bx
adc esi, 90
neg ebx
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 17
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
neg di
add rsi, rax
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 70
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rbx], ax
add cl, 8
sub cx, 37
mov dil, dil
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
cmovnp eax, eax
or si, 68
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 51
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
add si, 4
sbb bl, cl
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 29
xor dil, 97
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 86
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and al, dil
and rsi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rsi]
mov esi, 90
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 23
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
mov dl, -34
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 98
cmovnp rcx, rbx
sbb cl, 19
add dil, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
