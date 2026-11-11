.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
lea ecx, qword ptr [rdx]
lea rdi, qword ptr [rax + rsi + 2]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
sbb bl, dl
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 17
add sil, -68
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
