.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, ax
xchg bl, dil
add dil, dl
test dl, 114
dec cl
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
mov dl, 81
add sil, -18
cmp al, 116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
