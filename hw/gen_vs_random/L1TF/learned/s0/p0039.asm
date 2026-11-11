.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 65 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 6
inc ax
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], -31
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
adc dl, bl
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rcx]
xor bx, si
mul cl
add edi, esi
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
cmovl rcx, rdx
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
cmovle si, si
xchg dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
