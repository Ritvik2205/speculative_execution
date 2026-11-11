.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
sbb rcx, rax
or cx, 59
and rdi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdi]
cmovbe edx, ecx
xor al, -82
imul dx
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
cmovl eax, edi
and rdx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -11
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edi
or cx, 23
xor cl, dl
mul al
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -31
cmovbe edx, ebx
cmovz ebx, eax
cmp esi, 123
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
movsx si, bl
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
add dil, -84
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rax
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 118
mov cl, 1
adc bl, -58
or di, 0b1000000000000000 # instrumentation
bsf di, di
or bx, -33
cmovnb rbx, rax
cmovno ecx, edx
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], 10
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], -59
adc bl, sil
movsx eax, sil
cmovnb di, bx
xor rbx, -99
and rdi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 43
test bl, -116
add dl, -58 # instrumentation
xchg cx, ax
or al, -16
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
