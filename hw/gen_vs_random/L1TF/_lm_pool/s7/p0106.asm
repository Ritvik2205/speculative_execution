.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
and rcx, rdx
sbb ax, -9869
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdx
inc edi
and cl, bl
add al, al
bts bx, dx
mul al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
