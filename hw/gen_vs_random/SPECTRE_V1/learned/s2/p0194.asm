.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 12 # instrumentation
cmovnb edx, esi
add al, -109
sub sil, cl
setnle bl
sbb al, -114
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or bl, dl
test cl, -33
sub rcx, 13
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rcx
cmp sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
