.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul dx
or di, 0b1000000000000000 # instrumentation
bsf di, di
or bx, -33
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rax
cmovno ecx, edx
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 43
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
cmp esi, -84
cmovbe edx, ecx
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
adc bl, 0
cmovl eax, edi
or al, 27
cmovnb di, bx
xor cl, dl
and rdi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdi]
cmovz ebx, eax
adc bl, sil
or cx, 23
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], 10
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 118
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 3
xor al, -113
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -31
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -11
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edi
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
mul al
cmovbe edx, ebx
cmovnb rbx, rax
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
test bl, -29
sbb rcx, rax
movsx si, bl
add dl, -58 # instrumentation
xchg cx, ax
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
or cx, 23
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
mov cl, -38
add dil, 75
and rdi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 71
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
xor rbx, -99
movsx eax, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
