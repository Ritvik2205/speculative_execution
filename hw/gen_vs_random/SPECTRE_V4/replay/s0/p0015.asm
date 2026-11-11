.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx si, bl
test bl, 110
cmovno ecx, edx
sbb rcx, rax
cmovnb rbx, rax
or al, 27
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rax
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 3
cmovz ebx, eax
or di, 0b1000000000000000 # instrumentation
bsf di, di
add dl, -58 # instrumentation
xchg cx, ax
and rdi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdi]
cmovnb di, bx
or cx, 59
cmovl eax, edi
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
mul al
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -11
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
cmp esi, -84
cmovbe edx, ebx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
xor cl, dl
and rdi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdi]
xor al, 48
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 71
adc bl, sil
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
cmovbe edx, ecx
movsx eax, sil
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edi
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 118
and rdx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], 10
or bx, -33
adc bl, 79
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 43
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
xor rbx, -99
mov cl, 14
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -31
or cx, 23
add dil, 105
imul dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
