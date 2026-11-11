.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdx]
cmovbe edx, ebx
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -11
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -31
add dil, 75
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
adc bl, 97
cmovz ebx, eax
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rax
adc bl, sil
and rdi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdi]
sbb rcx, rax
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], 10
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdi]
test bl, 110
movsx si, bl
or bx, -33
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], -59
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edi
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
cmovnb di, bx
xor al, 57
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
imul dx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
movsx eax, sil
or di, 0b1000000000000000 # instrumentation
bsf di, di
mul al
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 43
cmovno ecx, edx
xor cl, dl
or cx, 23
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
cmovl eax, edi
cmovbe edx, ecx
mov cl, -38
cmp esi, -84
add dl, -58 # instrumentation
xchg cx, ax
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
or al, -90
cmovnb rbx, rax
xor rbx, -99
or cx, 23
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
