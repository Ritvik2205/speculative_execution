.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
or al, -48
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
sub cl, -49
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 4
and cl, cl
add cl, bl
cmovb cx, si
jmp .bb_0.1
.bb_0.1:
or sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
