.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], esi
and cl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -23
bt edi, 254
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
xor edi, -47
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
cmovle ebx, edi
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
and eax, -872608366
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
cmovno eax, esi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdx]
bt edx, 75
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
not eax
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
bt ebx, 107
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
bts eax, 103
sub esi, 9
add si, 89
xor ax, 2053
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], di
sub bl, 78
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 14
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 3
imul dx
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 52
and rdi, 97
and bl, -55 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 32
and sil, -94
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 5
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
add dil, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
