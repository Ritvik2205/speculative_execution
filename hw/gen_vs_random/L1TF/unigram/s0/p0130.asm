.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -37
lea edi, qword ptr [rdx]
xor edx, eax
sub dl, dil
sbb esi, 58
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 81
cmovno esi, esi
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rbx]
add al, -65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
cmovl rdx, rax
dec bx
test cl, 24
setle dl
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
