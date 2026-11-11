.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not cx
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
adc cl, -34
sub dl, 105
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rax
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], -128
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
cmovo ax, bx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
xor di, 30
and rax, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rax]
imul rdx, rbx
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
or ax, ax
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -55
add dl, -10 # instrumentation
cmovns edi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
