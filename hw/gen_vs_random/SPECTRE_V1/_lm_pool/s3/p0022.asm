.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 20
setno al
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
sub bl, -6
and cl, sil
sub cl, -47
lea rax, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
jmp .bb_0.1
.bb_0.1:
cmp bl, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
