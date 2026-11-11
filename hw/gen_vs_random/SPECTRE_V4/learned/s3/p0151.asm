.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add al, 72 # instrumentation
cmovle ax, dx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
mul ax
sbb rdx, 93
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
adc ecx, -12
sbb cl, dil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
sub al, 119
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
cmovs rax, rcx
xchg rcx, rbx
cmovbe bx, bx
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
test rax, -331426050
and rax, 57
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
mov rsi, rbx
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
add rdi, -94
and dil, al
xchg ecx, edi
xor sil, dil
add dl, -99 # instrumentation
not ecx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
bts esi, 241
cmovnle rsi, rsi
test al, bl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdx]
xor di, -43
mov bx, -31043
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add cl, 122 # instrumentation
cmovz rsi, rbx
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
cmp cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
