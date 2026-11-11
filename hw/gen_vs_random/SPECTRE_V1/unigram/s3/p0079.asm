.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], edx
add si, 73
and rdx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdx]
adc dil, 41
adc cl, cl
add al, 127 # instrumentation
sets bl
cmovl cx, bx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
dec dl
lea si, qword ptr [rdi + rdx]
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 41
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
or al, bl
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
