.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
sbb eax, -403815802
jmp .bb_0.1
.bb_0.1:
setno bl
or al, -5
test ecx, 38
sbb dl, sil
jmp .bb_0.2
.bb_0.2:
and edi, 52
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and eax, -409673666
cmp cl, bl
jmp .bb_0.3
.bb_0.3:
cmp dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
