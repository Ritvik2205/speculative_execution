.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -113
setz cl
test al, 15
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rbx
add sil, -61
cmovb dx, si
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
test dil, -126
jmp .bb_0.1
.bb_0.1:
test cl, 95
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
sub dil, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
