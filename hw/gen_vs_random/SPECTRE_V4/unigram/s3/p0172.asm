.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 51
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 76
cmovnp dx, dx
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
cmovp bx, cx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edx
cmovnb edx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rcx]
sub eax, 2
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
add rax, rdx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rax
cmp sil, al
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], di
xchg rsi, rbx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 45
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
add bx, 110
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rdx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
sbb bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
imul bl
and dil, cl
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rsi]
cmovb eax, esi
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
inc edx
test al, 66
and al, -127
sub al, cl
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
