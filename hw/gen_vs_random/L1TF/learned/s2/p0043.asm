.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ecx
add al, -46
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
cmp al, bl
and rdi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdi]
xor dl, 9
lea ax, qword ptr [rdi + rbx + 85]
jmp .bb_0.1
.bb_0.1:
and sil, -90
test sil, 29
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
or eax, 1495028166
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
