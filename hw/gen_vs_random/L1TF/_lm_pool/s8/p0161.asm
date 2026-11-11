.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec si
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
cmovs cx, ax
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
js .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 80
jmp .bb_0.5
.bb_0.5:
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
