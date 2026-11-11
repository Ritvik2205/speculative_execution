.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dl
lea cx, qword ptr [rcx]
xchg dl, bl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
sub cx, 33
jle .bb_0.2
jmp .exit_0
.bb_0.2:
movsx di, dl
add dl, 47
sub bl, -19
adc dil, 25
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], sil
sbb rdx, -34
lea rcx, qword ptr [rdi + rsi + 29]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
