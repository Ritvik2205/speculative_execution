.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -86
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor rax, 376589024
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi], 20
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
sub rsi, 97
sub dl, bl
test sil, 97
jmp .bb_0.3
.bb_0.3:
xchg dil, dl
xor bl, dl
inc ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
