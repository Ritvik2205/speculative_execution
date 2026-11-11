.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
setno dil
xor bl, -38
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
or dl, cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
movsx edx, al
sub al, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
