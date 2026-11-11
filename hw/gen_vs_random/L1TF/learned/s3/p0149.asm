.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
adc bx, 75
or sil, -44
jmp .bb_0.1
.bb_0.1:
test al, bl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
sbb dl, -26
cmp dil, cl
sub cl, 86
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
