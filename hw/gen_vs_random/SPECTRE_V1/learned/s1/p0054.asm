.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 12
bt edx, 1
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and sil, 111
sub dil, al
lea cx, qword ptr [rbx + rdx + 50177]
js .bb_0.2
jmp .exit_0
.bb_0.2:
bts edi, 6
add al, dil
and al, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
