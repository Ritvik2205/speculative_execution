.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
add al, cl
lea rdx, qword ptr [rdi + rbx + 2]
xor bl, dl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
sbb ebx, 20
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
