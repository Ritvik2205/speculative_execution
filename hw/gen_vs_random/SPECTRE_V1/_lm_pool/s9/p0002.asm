.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
test bl, -8
sbb al, -114
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ecx
test dl, 113
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
or rbx, 43
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -1157135998
adc cl, dil
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx], 94
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
lea rdx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
