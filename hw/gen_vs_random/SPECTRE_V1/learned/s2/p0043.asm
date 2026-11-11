.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
test sil, -31
js .bb_0.1
jmp .exit_0
.bb_0.1:
setno bl
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx], 76
lea di, qword ptr [rsi + rax]
lea rbx, qword ptr [rdx + rcx + 90]
cmp sil, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
