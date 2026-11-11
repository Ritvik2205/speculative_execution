.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -104 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
xor ax, 27703
or rax, 699028911
test bl, cl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], ax
sub sil, -99
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 74
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
test dil, -126
or al, dl
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
