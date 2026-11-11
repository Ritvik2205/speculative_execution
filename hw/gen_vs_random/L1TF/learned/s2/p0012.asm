.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rbx, rcx
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
setb bl
xor al, 45
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
adc cl, -34
xor ax, -24879
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
