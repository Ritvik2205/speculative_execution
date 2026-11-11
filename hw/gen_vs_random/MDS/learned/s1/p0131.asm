.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and bl, al
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
test cl, -113
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rcx], bx
test dil, dl
test al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
