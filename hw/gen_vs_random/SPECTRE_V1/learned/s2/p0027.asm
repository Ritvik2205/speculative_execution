.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, ax
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
sub sil, al
add al, -44
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
xchg ebx, edi
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
js .bb_0.3
jmp .exit_0
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
