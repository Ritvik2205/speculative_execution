.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -104 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
lea ax, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
and ax, 26813
add dl, 125
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
setb cl
setns al
sbb al, -4
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdi]
cmp sil, -11
add bx, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
