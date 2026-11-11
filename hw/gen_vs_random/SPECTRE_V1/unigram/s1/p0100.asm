.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dil, dil
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ebx
and dil, dil
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 43
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], 1
cmovbe rax, rdx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
mul sil
add al, 33 # instrumentation
setnz al
sub edi, esi
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 43
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
cmovl eax, edx
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
