.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -26
xor al, -15
xor rsi, -3
cmp bl, dil
add sil, al
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
mov al, cl
sbb al, -52
and dl, -11
adc bl, 35
and cl, 32
neg dl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
or al, dl
dec dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
