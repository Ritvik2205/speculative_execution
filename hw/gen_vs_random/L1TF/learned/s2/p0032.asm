.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -71 # instrumentation
adc ebx, ebx
sub cx, di
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 58
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
movzx ebx, cl
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
