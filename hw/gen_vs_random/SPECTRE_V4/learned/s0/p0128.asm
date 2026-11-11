.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, al
adc rax, 253624080
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
sub al, 55
cmp dil, cl
jmp .bb_0.1
.bb_0.1:
adc al, -70
adc bl, dil
inc edi
or dil, bl
xor al, 57
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
dec al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
or cl, bl
test ax, -14473
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
