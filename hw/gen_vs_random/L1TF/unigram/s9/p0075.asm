.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not eax
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
xor cl, cl
bt ax, 205
cmovnbe edi, esi
cmovl rbx, rbx
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
cmp dl, bl
jmp .bb_0.1
.bb_0.1:
lea eax, qword ptr [rax + rdx]
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
add dl, 12 # instrumentation
cmovnb eax, edx
or cl, 105
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
sub ebx, 91
xor ebx, -81
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
