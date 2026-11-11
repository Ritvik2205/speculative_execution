.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx si, bl
test bl, 87
cmovno ecx, edx
sbb rcx, rax
cmovnb rbx, rax
or al, 1
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rax
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
cmovz ebx, eax
or di, 0b1000000000000000 # instrumentation
bsf di, di
add dl, -58 # instrumentation
xchg cx, ax
and rdi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdi]
cmovnb di, bx
or cx, 23
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
cmp esi, 123
cmovbe edx, ebx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
xor cl, dl
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rcx]
and al, dl
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 80
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
or rax, rcx
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
or ax, -26182
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
imul edx, edx
cmovo si, dx
cmp cl, dl
movzx edi, bx
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
test cl, bl
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
add dl, -96 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
cmovp rax, rcx
test dl, 114
cmp edi, ebx
not dil
cmovle rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
