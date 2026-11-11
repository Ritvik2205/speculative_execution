.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -47
mov sil, al
lea rsi, qword ptr [rbx + rbx + 66]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dl, -12
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
jno .bb_0.2
jmp .exit_0
.bb_0.2:
sbb dl, cl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and cl, -57
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
cmp dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
