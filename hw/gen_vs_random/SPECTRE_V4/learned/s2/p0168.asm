.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rbx, -66
test dl, 114
xchg edx, edi
and al, dil
adc al, -59
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
xor cx, dx
and rdi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdi]
dec dil
and dil, dl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
or al, dl
lea ecx, qword ptr [rax]
mov dl, -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
