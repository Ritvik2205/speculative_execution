.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
cmovle edx, ebx
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], ax
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rcx
add ecx, 86
and rcx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rcx]
mul rbx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], di
cmovle rdi, rax
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rax
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
btc rcx, rbx
sub rdi, 79
and rdx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdx]
movzx rcx, bx
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
imul dx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 75
and bl, -63
xor ax, di
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 46
neg rdi
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rcx
adc al, dl
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
xchg si, di
or dil, 4
or rsi, rdi
test rdi, -1876639003
imul dx
test al, bl
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
imul sil
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rcx], esi
add cl, 8 # instrumentation
adc sil, cl
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
adc edi, 61
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
test esi, 14
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
