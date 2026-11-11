.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
setno al
lea di, qword ptr [rsi + rdx + 20]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
test eax, 899472326
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
sub dl, -34
xor cl, dl
jmp .bb_0.1
.bb_0.1:
sbb al, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
