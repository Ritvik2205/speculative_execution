.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
xor al, 16
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
add al, -46
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 10
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
sbb esi, 97
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
sub al, bl
sbb ecx, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
