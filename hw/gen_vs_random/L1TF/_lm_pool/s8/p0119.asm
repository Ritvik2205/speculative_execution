.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -104 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
xor dl, 64
add ax, 116
and cl, dl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 56
and cl, 85
xor bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
