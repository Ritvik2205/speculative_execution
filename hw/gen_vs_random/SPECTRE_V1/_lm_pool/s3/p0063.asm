.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
or cl, cl
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
inc dl
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, esi
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 47
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
sbb eax, 1332762061
sub cl, -47
sub rbx, -11
and al, -54
and dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
