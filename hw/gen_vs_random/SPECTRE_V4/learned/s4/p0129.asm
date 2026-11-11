.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 4
mov al, cl
or dil, bl
test dl, -125
jmp .bb_0.1
.bb_0.1:
xor cl, 13
sbb al, -43
or cl, 83
adc al, dil
dec bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
cmp rcx, -121
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
add dl, sil
sub sil, al
add dl, cl
sub al, 86
or dl, 71
or bl, dl
or cl, sil
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
or dl, sil
adc bl, sil
add cl, -9
add dil, bl
sub cl, dl
mov al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
