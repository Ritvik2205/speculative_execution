.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno ecx, edx
add dil, 105
mul al
cmp esi, -84
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], -59
cmovz ebx, eax
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rax
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -31
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 118
or al, -90
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
movsx si, bl
or bx, -33
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdi]
or cx, 23
and rdx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdx]
cmovnb rbx, rax
xor rbx, -99
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
imul dx
test bl, 110
xor cl, dl
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
xor al, -82
mov cl, -38
and rdi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -11
cmovbe edx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
adc bl, sil
cmovnb di, bx
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
cmovl eax, edi
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 43
movsx eax, sil
cmovbe edx, ecx
or cx, 59
sbb rcx, rax
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edi
add dl, -58 # instrumentation
xchg cx, ax
or di, 0b1000000000000000 # instrumentation
bsf di, di
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], 10
adc bl, 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
