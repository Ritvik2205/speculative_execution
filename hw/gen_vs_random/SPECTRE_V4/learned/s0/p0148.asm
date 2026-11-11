.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, cl
add bl, 54
and dil, -23
cmp al, 105
cmp al, dl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
xor si, cx
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
add al, -55
add cl, bl
adc sil, al
neg dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
