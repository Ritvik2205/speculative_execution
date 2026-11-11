.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and dil, dl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
test sil, dl
sub sil, -99
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 34
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
cmovb ax, cx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 88
and di, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
