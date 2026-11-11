.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 47
cmovb ax, dx
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
and dil, -114
xor dl, dil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
adc al, bl
sbb dl, cl
cmp cl, 17
lea rdx, qword ptr [rcx + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
