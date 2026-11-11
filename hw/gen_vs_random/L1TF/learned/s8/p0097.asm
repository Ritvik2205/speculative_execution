.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
sub al, 26
xor eax, -2123070438
jmp .bb_0.1
.bb_0.1:
test al, -82
cmovb ax, si
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 12
sbb al, 61
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
