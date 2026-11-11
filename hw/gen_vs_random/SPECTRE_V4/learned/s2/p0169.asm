.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
or cl, dl
cmp al, 109
cmp al, cl
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
dec al
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
adc dil, 109
add bl, cl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
add cl, -9
cmp dil, 101
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
dec dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
