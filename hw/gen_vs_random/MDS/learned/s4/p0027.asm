.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo cx, dx
jmp .bb_0.1
.bb_0.1:
and bl, bl
jmp .bb_0.2
.bb_0.2:
sub sil, 60
xor eax, 2063216578
or al, -22
btr edx, esi
test dil, bl
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
test edx, -1561252782
bt eax, esi
jmp .bb_0.5
.bb_0.5:
and dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
