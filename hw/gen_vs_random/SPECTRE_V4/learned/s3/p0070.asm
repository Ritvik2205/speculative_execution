.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
mov bl, al
sbb dl, -62
cmp bl, -79
xchg rdx, rcx
adc dil, 109
mov al, bl
cmp rbx, -3
cmp dl, bl
add cl, -62
cmp dil, -29
xor dil, 117
and al, -28
xchg di, bx
adc edi, -83
adc bl, 79
mov dl, -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
