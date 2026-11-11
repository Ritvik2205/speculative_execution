.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, al
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
add dl, al
and sil, -55
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xchg ecx, eax
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
cmp cl, dl
test al, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
