.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
or al, -83
adc dil, -17
add al, dil
cmp rax, 2052654950
xor ax, di
add dil, sil
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
test al, -24
add ax, -9762
adc sil, -31
and cx, -117
adc bl, 0
bt ecx, eax
sbb ecx, 55
or rdi, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
