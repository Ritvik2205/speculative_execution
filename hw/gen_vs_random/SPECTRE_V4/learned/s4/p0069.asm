.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, cl
test sil, 68
xchg esi, ecx
add dil, al
adc al, dil
mov dl, sil
mov al, cl
adc bl, dl
add al, bl
xor rbx, -99
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 24
and dil, 8
adc al, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
