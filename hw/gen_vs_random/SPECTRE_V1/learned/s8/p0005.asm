.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
lea bx, qword ptr [rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
xor sil, sil
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and cl, bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 47
btc cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
