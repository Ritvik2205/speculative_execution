.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
add sil, 2
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
sbb al, dil
add dl, 47
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
adc dil, 100
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
cmp bl, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, dl
sbb ebx, 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
