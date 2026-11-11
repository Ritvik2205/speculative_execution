.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
add cl, bl
dec dil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, bl
lea cx, qword ptr [rax]
cmp al, 46
xor dil, -37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
