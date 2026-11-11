.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -62
sbb al, cl
cmovle ax, ax
xor bl, -38
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 48
adc esi, -66
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmovp dx, ax
add dl, -125 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 89
sbb edx, 105
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx], 10
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
cmovnz rdi, rbx
sbb dil, -93
sbb eax, 99727957
add al, -76 # instrumentation
cmovnbe bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
